import 'package:all_nations/domain/auth/auth.failure.dart';
import 'package:all_nations/infrastructure/services/firebase/firestore.service.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class FirebaseAuthService {
  final _firebaseAuth = FirebaseAuth.instance;
  final _firestoreService = FirebaseFirestoreService();

  Future<Either<AuthFailure, Unit>> logout() async {
    await _firebaseAuth.signOut();
    if (_firebaseAuth.currentUser == null) {
      return const Right(unit);
    }

    return const Left(
        AuthFailure.serverError(message: "Error: Failed to logout."));
  }

  User? get currentUser => _firebaseAuth.currentUser;

  Future<Either<AuthFailure, Unit>> deleteUser() async {
    try {
      var user = _firebaseAuth.currentUser;
      if (user != null) {
        final uid = user.uid;
        await user.delete();
        // delete profile
        final failureOrUnit = await _firestoreService.deleteProfile(uid: uid);
        return failureOrUnit.fold(
          (failure) => Left(failure),
          (unit) => Right(unit),
        );
      } else {
        return const Left(AuthFailure.noUserFound());
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == "requires-recent-login") {
        return const Left(AuthFailure.noRecentLogin());
      } else {
        return const Left(AuthFailure.serverError());
      }
    } catch (e) {
      return const Left(AuthFailure.serverError());
    }
  }
}

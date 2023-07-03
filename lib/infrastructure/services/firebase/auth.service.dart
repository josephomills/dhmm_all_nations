import 'package:all_nations/domain/auth/auth.failure.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class FirebaseAuthService {
  final _firebaseAuth = FirebaseAuth.instance;

  Future<Either<AuthFailure, Unit>> logout() async {
    await _firebaseAuth.signOut();
    if (_firebaseAuth.currentUser == null) {
      return const Right(unit);
    }

    return const Left(
        AuthFailure.serverError(message: "Error: Failed to logout."));
  }

  User? get currentUser => _firebaseAuth.currentUser;
}

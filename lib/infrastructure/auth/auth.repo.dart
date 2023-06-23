import 'package:all_nations/domain/auth/auth.facade.dart';
import 'package:all_nations/domain/core/config/injectable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:all_nations/domain/auth/auth.failure.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthFacade)
class AuthRepo implements AuthFacade {
  final _firestore = FirebaseFirestore.instance;
  final _firebaseAuth = FirebaseAuth.instance;

  @override
  Future<Either<AuthFailure, Unit>> logout() async {
    await _firebaseAuth.signOut();
    if (_firebaseAuth.currentUser == null) {
      return const Right(unit);
    }

    return const Left(
        AuthFailure.serverError(message: "Error: Failed to logout."));
  }

  @override
  Future<Either<AuthFailure, User>> register(
      {required Map<String, dynamic> details}) async {
    return _firestore
        .collection("users")
        .doc(getIt<User>().uid)
        .set(details)
        .then((_) => Right(getIt<User>()
          ..updateDisplayName(details["firstname"] + " " + details["lastname"])
          ..updateEmail(details["email"])))
      ..catchError((error) => const Left(AuthFailure.serverError()));
  }

  @override
  Future<Either<AuthFailure, bool>> isRegistered() async {
    final doc = _firestore.collection("users").doc(getIt<User>().uid).get();
    return doc.then((doc) => Right(doc.exists))
      ..catchError(
          (error) => Left(AuthFailure.serverError(message: error.message)));
  }
}

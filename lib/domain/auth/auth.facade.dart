import 'package:all_nations/domain/auth/auth.failure.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthFacade {
  /// Logout user
  Future<Either<AuthFailure, Unit>> logout();

  /// Check if a user is already registered.
  ///
  /// If a user is registered, there should be a doc in the users collection
  /// with their UID.
  Future<Either<AuthFailure, bool>> isRegistered();

  /// Register a new user's details
  Future<Either<AuthFailure, User>> register(
      {required Map<String, dynamic> details});
}

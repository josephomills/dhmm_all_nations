import 'package:all_nations/domain/auth/auth.failure.dart';
import 'package:all_nations/infrastructure/auth/user.model.dart';
import 'package:dartz/dartz.dart';

/// Authentication Interface
abstract class AuthFacade {
  /// Logout user
  Future<Either<AuthFailure, Unit>> logout();

  /// Check if a user is already registered.
  ///
  /// If a user is registered, there should be a doc in the users collection
  /// with their UID.
  Future<Either<AuthFailure, bool>> isRegistered();

  /// Register a new user's details
  Future<Either<AuthFailure, UserModel>> register(
      {required Map<String, dynamic> details});

  /// Get current user
  Either<AuthFailure, UserModel> get currentUser;

  Future<Either<AuthFailure, Unit>> updateUser(
      {required UserModel updatedUser});
}

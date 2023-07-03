import 'package:all_nations/domain/auth/auth.facade.dart';
import 'package:all_nations/domain/auth/auth.failure.dart';
import 'package:all_nations/domain/core/config/injectable.dart';
import 'package:all_nations/infrastructure/auth/user.model.dart';
import 'package:all_nations/infrastructure/services/firebase/auth.service.dart';
import 'package:all_nations/infrastructure/services/firebase/firestore.service.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

/// Authentication datasource/repo
@Injectable(as: AuthFacade)
class AuthRepo implements AuthFacade {
  final _firebaseFirestoreService = getIt<FirebaseFirestoreService>();
  final _firebaseAuthService = getIt<FirebaseAuthService>();

  @override
  Future<Either<AuthFailure, Unit>> logout() async {
    getIt.unregister<UserModel>();
    return await _firebaseAuthService.logout();
  }

  @override
  Future<Either<AuthFailure, UserModel>> register(
      {required Map<String, dynamic> details}) async {
    return _firebaseFirestoreService.register(details: details);
  }

  @override
  Future<Either<AuthFailure, bool>> isRegistered() async {
    return _firebaseFirestoreService.isRegistered();
  }

  @override
  Either<AuthFailure, UserModel> get currentUser {
    final currentUser = _firebaseAuthService.currentUser;
    return currentUser == null || !getIt.isRegistered<UserModel>()
        ? const Left(AuthFailure.noUserFound())
        : Right(getIt<UserModel>());
  }

  @override
  Future<Either<AuthFailure, Unit>> updateUser({required UserModel user}) {}
}

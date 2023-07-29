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
    if (getIt.isRegistered<UserModel>()) {
      getIt.unregister<UserModel>();
    }
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
  Future<Either<AuthFailure, UserModel>> get currentUser async {
    if (getIt.isRegistered<UserModel>()) {
      return Right(getIt<UserModel>());
    }

    final currentUser = _firebaseAuthService.currentUser;
    // get user details from firestore
    if (currentUser != null) {
      var failureOrProfile =
          await _firebaseFirestoreService.getUserProfile(id: currentUser.uid);
      return failureOrProfile.fold(
        (failure) => Left(failure),
        (profile) {
          //add uid
          profile["uid"] = currentUser.uid;
          return Right(profileToUserModel(profile: profile));
        },
      );
    } else {
      return const Left(AuthFailure.noUserFound());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> updateUser(
      {required UserModel updatedUser}) {
    return _firebaseFirestoreService.updateUser(updatedUser: updatedUser);
  }

  UserModel profileToUserModel({required Map<String, dynamic> profile}) =>
      UserModel(
        firstname: profile["firstname"],
        lastname: profile["lastname"],
        country: profile["country"],
        church: profile["church"],
        email: profile["email"],
        uid: profile["uid"],
      );

  @override
  Future<Either<AuthFailure, Unit>> deleteCurrentUser() {
    return _firebaseAuthService.deleteUser();
  }
}

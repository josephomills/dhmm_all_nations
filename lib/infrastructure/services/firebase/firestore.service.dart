import 'package:all_nations/domain/auth/auth.failure.dart';
import 'package:all_nations/domain/core/config/injectable.dart';
import 'package:all_nations/infrastructure/auth/user.model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class FirebaseFirestoreService {
  final _firestore = FirebaseFirestore.instance;

  Future<Either<AuthFailure, UserModel>> register(
      {required Map<String, dynamic> details}) async {
    try {
      await _firestore.collection("users").doc(getIt<User>().uid).set(details);
      getIt<User>()
        ..updateDisplayName(details["firstname"] + " " + details["lastname"])
        ..updateEmail(details["email"]);

      final newUser = UserModel(
        uid: getIt<User>().uid,
        email: details["email"],
        firstname: details["firstname"],
        lastname: details["lastname"],
        church: details["church"] ?? "",
        country: details["country"] ?? "",
      );

      // Store user model
      if (!getIt.isRegistered<UserModel>()) {
        getIt.registerSingleton<UserModel>(newUser);
      }

      return Right(newUser);
    } catch (e) {
      return const Left(AuthFailure.serverError());
    }
  }

  Future<Either<AuthFailure, Unit>> updateUser({
    required UserModel updatedUser,
  }) async {
    try {
      await _firestore
          .collection("users")
          .doc(getIt<UserModel>().uid)
          .update(updatedUser.toJson());

      if (getIt.isRegistered<UserModel>()) {
        getIt.unregister<UserModel>();
        getIt.registerSingleton<UserModel>(updatedUser);
      }

      return const Right(unit);
    } catch (e) {
      return const Left(AuthFailure.serverError());
    }
  }

  Future<Either<AuthFailure, bool>> isRegistered() async {
    try {
      final doc =
          await _firestore.collection("users").doc(getIt<User>().uid).get();
      return Right(doc.exists);
    } catch (e) {
      return Left(AuthFailure.serverError(message: e.toString()));
    }
  }

  Future<Either<AuthFailure, Map<String, dynamic>>> getUserProfile(
      {required String id}) async {
    final doc = await _firestore.collection("users").doc(id).get();
    return doc.exists
        ? Right(doc.data()!)
        : const Left(AuthFailure.serverError());
  }

  Future<Either<AuthFailure, Unit>> deleteProfile({required String uid}) async {
    try {
      await _firestore.collection("users").doc(uid).delete();
      return const Right(unit);
    } catch (e) {
      return const Left(AuthFailure.serverError());
    }
  }
}

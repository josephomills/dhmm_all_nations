import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.serverError({String? message}) = _ServerError;
  const factory AuthFailure.emailAlreadyInUse() = _EmailAlreadyInUse;
}

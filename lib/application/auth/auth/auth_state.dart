part of 'auth_bloc.dart';

/// States for [AuthBloc]
@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required Option<ParseUser> currentUserOption,
    required bool isLoading,
    required Option<Either<AuthFailure, Unit>> failureOrUnitOption,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        currentUserOption: none(),
        isLoading: false,
        failureOrUnitOption: none(),
      );
}

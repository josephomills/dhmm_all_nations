part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    required String firstname,
    required String lastname,
    required CountryCode countryCode,
    required String church,
    required String email,
    required bool isLoading,
    required bool validateFields,
    required bool showCountryDialog,
    required Option<Either<AuthFailure, User>> failureOrSuccessOption,
  }) = _RegisterState;

  factory RegisterState.initial() => RegisterState(
        firstname: "",
        lastname: "",
        email: "",
        countryCode: CountryCode.fromDialCode("+233"),
        church: "",
        isLoading: false,
        validateFields: false,
        showCountryDialog: false,
        failureOrSuccessOption: none(),
      );
}

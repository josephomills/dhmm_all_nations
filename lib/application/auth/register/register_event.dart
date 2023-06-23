part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.firstnameChanged({required String firstname}) =
      _FirstnameChanged;
  const factory RegisterEvent.lastnameChanged({required String lastname}) =
      _LastnameChanged;
  const factory RegisterEvent.emailChanged({required String email}) =
      _EmailChanged;
  const factory RegisterEvent.countryChanged(
      {required CountryCode countryCode}) = _countryFirstnameChanged;
  const factory RegisterEvent.churchChanged({required String church}) =
      _CountryChanged;
  const factory RegisterEvent.countryDialogToggled() = _CountryDialogToggled;
  const factory RegisterEvent.registerButtonPressed(
      {required GlobalKey<FormState> formKey}) = _RegisterButtonPressed;
}

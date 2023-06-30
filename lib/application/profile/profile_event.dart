part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.started() = _Started;
  const factory ProfileEvent.editingToggled() = _EditingToggled;
  const factory ProfileEvent.firstnameChanged({required String firstname}) =
      _FirstnameChanged;
  const factory ProfileEvent.lastnameChanged({required String lastname}) =
      _LastnameChanged;
  const factory ProfileEvent.emailChanged({required String email}) =
      _EmailChanged;
  const factory ProfileEvent.countryChanged(
      {required CountryCode countryCode}) = _countryFirstnameChanged;
  const factory ProfileEvent.churchChanged({required String church}) =
      _CountryChanged;
  const factory ProfileEvent.countryDialogToggled() = _CountryDialogToggled;
  const factory ProfileEvent.saveButtonPressed(
      {required GlobalKey<FormState> formKey}) = _SaveButtonPressed;
}

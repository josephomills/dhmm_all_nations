part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(false) bool isLoading,
    @Default(false) bool isEditing,
    @Default(false) bool validateFields,
    @Default(None()) Option<bool> updatedOption,
    @Default("") String firstname,
    @Default("") String lastname,
    @Default(new CountryCode.fromCountryCode("GH")) CountryCode countryCode,
    @Default("") String church,
    @Default("") String email,
  }) = _ProfileState;
}

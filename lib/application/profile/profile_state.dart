part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(false) bool isLoading,
    @Default(false) bool isEditing,
    @Default(false) bool validateFields,
    @Default(false) bool showCountryDialog,
    @Default(None()) Option<bool> updatedOption,
    @Default("") String firstname,
    @Default("") String lastname,
    @Default("GH") String countryCode,
    @Default("") String church,
    @Default("") String email,
    @Default(UserModel()) UserModel user,
  }) = _ProfileState;

  factory ProfileState.initial() => ProfileState(
        isEditing: false,
        isLoading: false,
        validateFields: false,
        updatedOption: none(),
        user: getIt<UserModel>(),
      );
}

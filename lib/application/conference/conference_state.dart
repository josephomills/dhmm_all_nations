part of 'conference_bloc.dart';

@freezed
class ConferenceState with _$ConferenceState {
  const factory ConferenceState({
    required bool isLoading,
    required List<ConferenceObject> conferences,
    required Option<Either<ConferenceFailure, List<ConferenceObject>>>
        failureOrConferencesOption,
  }) = _ConferenceState;

  factory ConferenceState.initial() => ConferenceState(
        isLoading: false,
        conferences: [],
        failureOrConferencesOption: none(),
      );
}

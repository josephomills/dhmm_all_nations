part of 'conference_details_bloc.dart';

@freezed
class ConferenceDetailsState with _$ConferenceDetailsState {
  const factory ConferenceDetailsState({required bool isLoading}) =
      _ConferenceDetailsState;

  factory ConferenceDetailsState.initial() =>
      const ConferenceDetailsState(isLoading: false);
}

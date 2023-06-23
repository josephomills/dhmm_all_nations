part of 'conference_details_bloc.dart';

@freezed
class ConferenceDetailsEvent with _$ConferenceDetailsEvent {
  const factory ConferenceDetailsEvent.started() = _Started;
}
part of 'conference_bloc.dart';

@freezed
class ConferenceEvent with _$ConferenceEvent {
  const factory ConferenceEvent.started() = _Started;
}
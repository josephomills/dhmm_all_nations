part of 'donate_bloc.dart';

@freezed
class DonateEvent with _$DonateEvent {
  const factory DonateEvent.started() = _Started;
}
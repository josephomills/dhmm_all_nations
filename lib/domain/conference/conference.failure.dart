import 'package:freezed_annotation/freezed_annotation.dart';

part 'conference.failure.freezed.dart';

@freezed
abstract class ConferenceFailure with _$ConferenceFailure {
  const factory ConferenceFailure.serverError({String? message}) = _ServerError;
}

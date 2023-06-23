import 'package:freezed_annotation/freezed_annotation.dart';

part 'home.failure.freezed.dart';

@freezed
abstract class HomeFailure with _$HomeFailure {
  const factory HomeFailure.serverError({String? message}) = _ServerError;
}

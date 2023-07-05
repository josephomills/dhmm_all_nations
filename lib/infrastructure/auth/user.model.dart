import 'package:freezed_annotation/freezed_annotation.dart';

part "user.model.freezed.dart";
part 'user.model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @Default("") String uid,
    @Default("") String firstname,
    @Default("") String lastname,
    @Default("GH") String country,
    @Default("") String church,
    @Default("") String email,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

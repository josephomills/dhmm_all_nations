// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      uid: json['uid'] as String? ?? "",
      firstname: json['firstname'] as String? ?? "",
      lastname: json['lastname'] as String? ?? "",
      country: json['country'] as String? ?? "GH",
      church: json['church'] as String? ?? "",
      email: json['email'] as String? ?? "",
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'country': instance.country,
      'church': instance.church,
      'email': instance.email,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FirestoreUser _$$_FirestoreUserFromJson(Map<String, dynamic> json) =>
    _$_FirestoreUser(
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      deletedAt: json['deletedAt'],
      isMatch: json['isMatch'] as bool,
      userName: json['userName'] as String,
      userAvater: json['userAvater'] as String,
      selfIntro: json['selfIntro'] as String,
      userId: json['userId'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$_FirestoreUserToJson(_$_FirestoreUser instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'deletedAt': instance.deletedAt,
      'isMatch': instance.isMatch,
      'userName': instance.userName,
      'userAvater': instance.userAvater,
      'selfIntro': instance.selfIntro,
      'userId': instance.userId,
      'email': instance.email,
      'password': instance.password,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'circle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Circle _$$_CircleFromJson(Map<String, dynamic> json) => _$_Circle(
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      deletedAt: json['deletedAt'],
      circleName: json['circleName'] as String,
      circleId: json['circleId'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$_CircleToJson(_$_Circle instance) => <String, dynamic>{
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'deletedAt': instance.deletedAt,
      'circleName': instance.circleName,
      'circleId': instance.circleId,
      'description': instance.description,
    };

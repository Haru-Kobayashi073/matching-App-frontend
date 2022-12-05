import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'circle.freezed.dart';
part 'circle.g.dart';

@freezed
abstract class Circle with _$Circle {
  const factory Circle({
    required dynamic createdAt,
    required dynamic updatedAt,
    required dynamic deletedAt,
    required String circleName,
    required String circleId,
    required String description,
  }) = _Circle;
  factory Circle.fromJson(Map<String, dynamic> json) =>
      _$CircleFromJson(json);
}

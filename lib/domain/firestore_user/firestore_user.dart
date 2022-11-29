import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firestore_user.freezed.dart';
part 'firestore_user.g.dart';

@freezed
abstract class FirestoreUser with _$FirestoreUser {
  const factory FirestoreUser({
    required dynamic createdAt,
    required dynamic updatedAt,
    required String userName,
    required String userId,
    required String email,
  }) = _FirestoreUser;
  factory FirestoreUser.fromJson(Map<String, dynamic> json) =>
      _$FirestoreUserFromJson(json);
}

    // required String password
    // required dynamic deleteAt,
    // required String selfIntro,
    // required String avater,
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_task.freezed.dart';
part 'user_task.g.dart';

@freezed
class UserTask with _$UserTask {
  const factory UserTask({
    required String id,
    required String title,
    @Default('') String description,
    @Default(false) bool isCompleted,
    required DateTime createdAt,
    DateTime? updatedAt,
  }) = _UserTask;

  factory UserTask.fromJson(Map<String, dynamic> json) =>
      _$UserTaskFromJson(json);
}

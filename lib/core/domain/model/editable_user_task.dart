import 'package:clock/clock.dart';
import 'package:flutter_architecture_blueprint/core/model/user_task.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'editable_user_task.freezed.dart';

@freezed
class EditableUserTask with _$EditableUserTask {
  const factory EditableUserTask({
    required String id,
    String? title,
    String? description,
    @Default(false) bool isCompleted,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _EditableUserTask;

  factory EditableUserTask.create() => EditableUserTask(id: const Uuid().v4());
}

extension UserTaskConverterEx on UserTask {
  EditableUserTask toEditable() => EditableUserTask(
        id: id,
        title: title,
        description: description,
        isCompleted: isCompleted,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}

extension EditableUserTaskConverterEx on EditableUserTask {
  UserTask toUserTask() => UserTask(
        id: id,
        title: title ?? '',
        description: description ?? '',
        isCompleted: isCompleted,
        createdAt: createdAt ?? clock.now(),
        updatedAt: updatedAt,
      );
}

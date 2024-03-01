import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter_architecture_blueprint/core/model/user_task.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

typedef JSON = Map<String, dynamic>;

final todoApiClient = Provider((ref) => FakeTodoApiClient());

// TODO: Replace with HTTP Client
class FakeTodoApiClient {
  static const String _taskListKey = 'taskList';

  Future<List<UserTask>> getTaskList() async {
    return await _load();
  }

  Future<void> postTask({required UserTask task}) async {
    final taskList = await _load();
    await _save(taskList.appending(task));
  }

  Future<void> patchTask({required UserTask task}) async {
    final taskList = await _load();
    await _save(taskList.replaced(task));
  }

  Future<void> deleteTask({required String id}) async {
    final taskList = await _load();
    await _save(taskList.deletedBy(id));
  }

  // Private Helpers

  Future<List<UserTask>> _load() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonStringList = prefs.getStringList(_taskListKey);
    if (jsonStringList == null) return [];

    return jsonStringList
        .map<JSON?>((jsonString) => jsonDecode(jsonString))
        .whereNotNull()
        .map((json) => UserTask.fromJson(json))
        .sorted((a, b) => a.createdAt.compareTo(b.createdAt))
        .toList();
  }

  Future<void> _save(List<UserTask> taskList) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonStringList = taskList
        .map((task) => task.toJson())
        .map((json) => jsonEncode(json))
        .toList();
    prefs.setStringList(_taskListKey, jsonStringList);
  }
}

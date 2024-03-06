import 'package:flutter/material.dart';
import 'package:flutter_architecture_blueprint/core/data/repository/todo/fake_todo_repository.dart';
import 'package:flutter_architecture_blueprint/core/data/repository/todo/todo_repository_impl.dart';
import 'package:flutter_architecture_blueprint/core/model/user_task.dart';
import 'package:flutter_architecture_blueprint/feature/todo/task_list/task_list_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/date_symbol_data_local.dart';

Future<void> main() async {
  await initializeDateFormatting();
  Intl.defaultLocale = 'ja_JP';

  const uuid = Uuid();
  final fakeState = BehaviorSubject.seeded(const FakeTodoRepositoryState());
  final todoRepository = FakeTodoRepository.from(fakeState);
  todoRepository.handler.fetchTaskList = () async {
    fakeState.add(fakeState.value.copyWith(taskList: [
      UserTask(id: uuid.v4(), title: 'title1', createdAt: DateTime(2024, 3, 3)),
      UserTask(id: uuid.v4(), title: 'title2', createdAt: DateTime(2024, 3, 4)),
      UserTask(id: uuid.v4(), title: 'title3', createdAt: DateTime(2024, 3, 5)),
    ]));
  };

  runApp(ProviderScope(
    overrides: [
      todoRepositoryProvider.overrideWithValue(todoRepository),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TaskListPage(),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architecture_blueprint/core/domain/model/editable_user_task.dart';
import 'package:flutter_architecture_blueprint/feature/todo/edit_task/edit_task_page.dart';
import 'package:flutter_architecture_blueprint/feature/todo/task_list/task_list_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: TaskListRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: EditTaskRoute.page,
        ),
      ];
}

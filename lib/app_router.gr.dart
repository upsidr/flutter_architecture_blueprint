// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    EditTaskRoute.name: (routeData) {
      final args = routeData.argsAs<EditTaskRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EditTaskPage(
          key: args.key,
          task: args.task,
        ),
      );
    },
    TaskListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TaskListPage(),
      );
    },
  };
}

/// generated route for
/// [EditTaskPage]
class EditTaskRoute extends PageRouteInfo<EditTaskRouteArgs> {
  EditTaskRoute({
    Key? key,
    required EditableUserTask? task,
    List<PageRouteInfo>? children,
  }) : super(
          EditTaskRoute.name,
          args: EditTaskRouteArgs(
            key: key,
            task: task,
          ),
          initialChildren: children,
        );

  static const String name = 'EditTaskRoute';

  static const PageInfo<EditTaskRouteArgs> page =
      PageInfo<EditTaskRouteArgs>(name);
}

class EditTaskRouteArgs {
  const EditTaskRouteArgs({
    this.key,
    required this.task,
  });

  final Key? key;

  final EditableUserTask? task;

  @override
  String toString() {
    return 'EditTaskRouteArgs{key: $key, task: $task}';
  }
}

/// generated route for
/// [TaskListPage]
class TaskListRoute extends PageRouteInfo<void> {
  const TaskListRoute({List<PageRouteInfo>? children})
      : super(
          TaskListRoute.name,
          initialChildren: children,
        );

  static const String name = 'TaskListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

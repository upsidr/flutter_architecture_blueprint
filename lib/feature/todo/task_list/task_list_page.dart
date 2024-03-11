import 'package:flutter/material.dart';
import 'package:flutter_architecture_blueprint/core/domain/model/editable_user_task.dart';
import 'package:flutter_architecture_blueprint/core/util/alert_state.dart';
import 'package:flutter_architecture_blueprint/feature/todo/edit_task/edit_task_notifier.dart';
import 'package:flutter_architecture_blueprint/feature/todo/edit_task/edit_task_page.dart';
import 'package:flutter_architecture_blueprint/feature/todo/task_list/task_list_contract.dart';
import 'package:flutter_architecture_blueprint/feature/todo/task_list/task_list_notifier.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sliver_tools/sliver_tools.dart';

import 'ui_components/task_list_item.dart';

extension _TaskListEx on WidgetRef {
  TaskListNotifier get notifier => read(taskListNotifierProvider.notifier);
}

class TaskListPage extends HookConsumerWidget with AlertStateCompatible {
  const TaskListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(taskListEffectProvider,
        (_, effect) => handleEffect(context, ref, effect: effect));
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback(
          (_) => ref.notifier.send(const TaskListAction.onAppear()));
      return null;
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDo リスト'),
        centerTitle: true,
      ),
      body: const _TaskListBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            ref.notifier.send(const TaskListAction.newTaskButtonTapped()),
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<void> handleEffect(
    BuildContext context,
    WidgetRef ref, {
    required TaskListEffect effect,
  }) async {
    switch (effect) {
      case None():
        break;
      case GoDetail():
        ref.notifier.consume();
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProviderScope(
              overrides: [
                editTaskArgsProvider.overrideWith(
                    (ref) => effect.task ?? EditableUserTask.create())
              ],
              child: const EditTaskPage(),
            ),
          ),
        );
      case ShowAlert():
        ref.notifier.consume();
        handleAlertState(context, effect.state);
    }
  }
}

class _TaskListBody extends HookConsumerWidget {
  const _TaskListBody();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final taskListNotCompleted = ref.watch(
      taskListNotifierProvider.select(
          (value) => value.taskList.where((t) => !t.isCompleted).toList()),
    );
    final taskListCompleted = ref.watch(
      taskListNotifierProvider.select(
          (value) => value.taskList.where((t) => t.isCompleted).toList()),
    );

    return CustomScrollView(
      slivers: [
        // not completed

        SliverPadding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
                buildList(ref, taskList: taskListNotCompleted)),
          ),
        ),

        // completed

        MultiSliver(children: [
          const Gap(16),

          // Section Title
          if (taskListCompleted.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                '完了 (${taskListCompleted.length}件)',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
        ]),
        SliverPadding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
                buildList(ref, taskList: taskListCompleted)),
          ),
        ),
      ],
    );
  }

  List<TaskListItem> buildList(
    WidgetRef ref, {
    required List<EditableUserTask> taskList,
  }) {
    return taskList
        .map(
          (task) => TaskListItem(sendAction: ref.notifier.send, item: task),
        )
        .toList();
  }
}

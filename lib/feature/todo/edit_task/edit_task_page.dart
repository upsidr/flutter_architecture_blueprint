import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architecture_blueprint/core/domain/model/editable_user_task.dart';
import 'package:flutter_architecture_blueprint/core/util/alert_state.dart';
import 'package:flutter_architecture_blueprint/core/util/datetime_formatted.dart';
import 'package:flutter_architecture_blueprint/feature/todo/edit_task/edit_task_contract.dart';
import 'package:flutter_architecture_blueprint/feature/todo/edit_task/edit_task_notifier.dart';
import 'package:flutter_architecture_blueprint/feature/todo/edit_task/ui_components/task_text_field.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sliver_tools/sliver_tools.dart';

import 'ui_components/toggle_complete_button.dart';

// Extension: Shorthand for Notifier / NotifierProvider
extension _EditTaskEx on WidgetRef {
  EditTaskNotifierProvider get notifierProvider {
    final task = watch(editTaskArgsProvider);
    return editTaskNotifierProvider(task);
  }

  EditTaskNotifier get notifier {
    final task = read(editTaskArgsProvider);
    return read(editTaskNotifierProvider(task).notifier);
  }
}

@RoutePage()
class EditTaskPage extends StatelessWidget {
  const EditTaskPage({
    super.key,
    required this.task,
  });

  final EditableUserTask? task;

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        editTaskArgsProvider
            .overrideWith((ref) => task ?? EditableUserTask.create()),
      ],
      child: const _EditTaskPage(),
    );
  }
}

class _EditTaskPage extends HookConsumerWidget with AlertStateCompatible {
  const _EditTaskPage();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isNewTask = ref.watch(
      ref.notifierProvider.select((value) => value.isNewTask),
    );
    final isSubmitButtonEnabled = ref.watch(
      ref.notifierProvider.select((value) => value.isSubmitButtonEnabled),
    );

    // Handling effects here.
    ref.listen(editTaskEffectProvider,
        (_, effect) => handleEffect(context, ref, effect: effect));

    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        actions: [
          if (!isNewTask) ...[
            IconButton(
              onPressed: () =>
                  ref.notifier.send(const EditTaskAction.deleteButtonTapped()),
              icon: const Icon(Icons.delete, applyTextScaling: true),
            ),
            TextButton(
              onPressed: isSubmitButtonEnabled
                  ? () => ref.notifier
                      .send(const EditTaskAction.updateButtonTapped())
                  : null,
              child: const Text(
                '保存',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ],
          if (isNewTask)
            TextButton(
              onPressed: isSubmitButtonEnabled
                  ? () =>
                      ref.notifier.send(const EditTaskAction.addButtonTapped())
                  : null,
              child: const Text(
                '追加',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
        ],
      ),
      body: const _EditTaskBody(),
    );
  }

  Future<void> handleEffect(
    BuildContext context,
    WidgetRef ref, {
    required EditTaskEffect effect,
  }) async {
    switch (effect) {
      case None():
        break;
      case Close():
        ref.notifier.consume();
        context.router.back();
      case ShowAlert():
        ref.notifier.consume();
        handleAlertState(context, effect.state);
    }
  }
}

class _EditTaskBody extends HookConsumerWidget {
  const _EditTaskBody();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final item = ref.watch(ref.notifierProvider.select((value) => value.item));

    final titleEditingController = useTextEditingController(text: item.title);
    final descriptionEditingController =
        useTextEditingController(text: item.description);

    final dateTextStyle = Theme.of(context).textTheme.bodyLarge;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => FocusScope.of(context).unfocus(),
      child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: MultiSliver(children: [
              // Title
              TaskTextField(
                controller: titleEditingController,
                onChanged: (newValue) {
                  ref.notifier.send(EditTaskAction.onTitleChanged(newValue));
                },
                style: Theme.of(context).textTheme.titleLarge,
                hintText: 'タイトルを入力',
              ),

              // Description
              const Gap(30),
              iconRow(
                icon: const Icon(Icons.description, applyTextScaling: true),
                trailing: TaskTextField(
                  controller: descriptionEditingController,
                  onChanged: (newValue) {
                    ref.notifier
                        .send(EditTaskAction.onDescriptionChanged(newValue));
                  },
                  hintText: '詳細を入力',
                ),
              ),

              // updatedAt
              if (item.updatedAt != null) ...[
                const Gap(30),
                iconRow(
                  icon: const Icon(Icons.update, applyTextScaling: true),
                  trailing: Text(
                    item.updatedAt!.yMMMMEEEEd(),
                    style: dateTextStyle,
                  ),
                ),
              ]

              // createdAt
              else if (item.createdAt != null) ...[
                const Gap(30),
                iconRow(
                  icon: const Icon(Icons.query_builder, applyTextScaling: true),
                  trailing: Text(
                    item.createdAt!.yMMMMEEEEd(),
                    style: dateTextStyle,
                  ),
                ),
              ],
            ]),
          ),

          // Complete Button
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(20),
              child: ToggleCompleteButton(
                sendAction: ref.notifier.send,
                isCompleted: item.isCompleted,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget iconRow({
    required Widget icon,
    required Widget trailing,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        icon,
        const Gap(10),
        Expanded(child: trailing),
      ],
    );
  }
}

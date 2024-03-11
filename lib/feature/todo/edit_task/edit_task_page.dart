import 'package:flutter/material.dart';
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

extension _EditTaskEx on WidgetRef {
  EditTaskNotifier get notifier {
    final task = read(editTaskArgsProvider);
    return read(editTaskNotifierProvider(task).notifier);
  }
}

class EditTaskPage extends HookConsumerWidget with AlertStateCompatible {
  const EditTaskPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final argument = ref.watch(editTaskArgsProvider);
    final isNewTask = ref.watch(
        editTaskNotifierProvider(argument).select((value) => value.isNewTask));
    final isSubmitButtonEnabled = ref.watch(editTaskNotifierProvider(argument)
        .select((value) => value.isSubmitButtonEnabled));

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
              icon: const Icon(Icons.delete),
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
        Navigator.pop(context);
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
    final argument = ref.watch(editTaskArgsProvider);
    final item = ref.watch(
        editTaskNotifierProvider(argument).select((value) => value.item));

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
                icon: const Icon(Icons.description),
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
                  icon: const Icon(Icons.update),
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
                  icon: const Icon(Icons.query_builder),
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

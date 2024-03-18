import 'package:flutter/material.dart';
import 'package:flutter_architecture_blueprint/core/domain/model/editable_user_task.dart';
import 'package:flutter_architecture_blueprint/feature/todo/task_list/task_list_contract.dart';
import 'package:gap/gap.dart';

class TaskListItem extends StatelessWidget {
  const TaskListItem({
    super.key,
    required this.sendAction,
    required this.item,
  });

  final void Function(TaskListAction) sendAction;
  final EditableUserTask item;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(item.id),
      onDismissed: (direction) {
        sendAction(TaskListAction.onTaskSwiped(item));
      },
      direction: DismissDirection.endToStart,
      background: Container(
        color: Theme.of(context).colorScheme.background,
      ),
      secondaryBackground: Container(
        color: Colors.red,
        child: const Align(
          alignment: Alignment.centerRight,
          child: Icon(Icons.delete),
        ),
      ),
      child: InkWell(
        onTap: () => sendAction(TaskListAction.taskTapped(item)),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // CheckButton
              Checkbox(
                value: item.isCompleted,
                onChanged: (_) =>
                    sendAction(TaskListAction.toggleIsCompleted(item)),
              ),

              // Title
              const Gap(12),
              Expanded(
                child: Text(item.title ?? ''),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

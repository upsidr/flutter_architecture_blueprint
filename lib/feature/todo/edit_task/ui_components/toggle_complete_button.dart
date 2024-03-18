import 'package:flutter/material.dart';
import 'package:flutter_architecture_blueprint/feature/todo/edit_task/edit_task_contract.dart';

class ToggleCompleteButton extends StatelessWidget {
  const ToggleCompleteButton({
    super.key,
    required this.sendAction,
    required this.isCompleted,
  });

  final void Function(EditTaskAction) sendAction;
  final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontWeight: FontWeight.w600);

    if (isCompleted) {
      return TextButton(
        onPressed: () =>
            sendAction(const EditTaskAction.uncompleteButtonTapped()),
        child: const Text('Mark as Uncompleted', style: textStyle),
      );
    } else {
      return TextButton(
        onPressed: () =>
            sendAction(const EditTaskAction.completeButtonTapped()),
        child: const Text('Mark as Completed', style: textStyle),
      );
    }
  }
}

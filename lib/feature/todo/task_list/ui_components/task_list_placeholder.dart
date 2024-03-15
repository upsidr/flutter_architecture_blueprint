import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TaskListPlaceholder extends StatelessWidget {
  const TaskListPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(
          Icons.task_alt,
          size: 40,
          color: Colors.grey,
          applyTextScaling: true,
        ),
        const Gap(14),
        Text(
          'No tasks yet',
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}

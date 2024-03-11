import 'package:flutter/material.dart';

class TaskTextField extends StatelessWidget {
  const TaskTextField({
    super.key,
    this.controller,
    this.onChanged,
    this.style,
    this.hintText,
  });

  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final TextStyle? style;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      style: style,
      decoration: InputDecoration.collapsed(
        hintText: hintText,
      ),
      keyboardType: TextInputType.text,
      maxLines: null,
    );
  }
}

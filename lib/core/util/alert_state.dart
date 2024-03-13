import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'alert_state.freezed.dart';

@freezed
sealed class AlertState with _$AlertState {
  const factory AlertState.okDialog({
    String? title,
    required String message,
  }) = OkDialog;
  const factory AlertState.silent() = Silent;
}

// Provides the feature to display commonized dialogs to Widget.
mixin AlertStateCompatible {
  handleAlertState(BuildContext context, AlertState state) async {
    switch (state) {
      case OkDialog(:final title, :final message):
        await _showDialog(context, title: title, message: message);
      case Silent():
        break;
    }
  }

  Future<void> _showDialog(
    BuildContext context, {
    String? title,
    required String message,
  }) async {
    await showAdaptiveDialog(
      context: context,
      builder: (context) {
        return AlertDialog.adaptive(
          title: title != null ? Text(title) : null,
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}

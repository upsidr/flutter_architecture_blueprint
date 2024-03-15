import 'package:flutter_architecture_blueprint/core/domain/model/editable_user_task.dart';
import 'package:flutter_architecture_blueprint/core/util/alert_state.dart';
import 'package:flutter_architecture_blueprint/core/util/base_contract.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_task_contract.freezed.dart';

// Notifier must implement this.
typedef EditTaskContract
    = BaseContract<EditTaskUiState, EditTaskAction, EditTaskEffect>;

@freezed
class EditTaskUiState with _$EditTaskUiState {
  const factory EditTaskUiState({
    required EditableUserTask item,
  }) = _EditTaskUiState;
}

@freezed
sealed class EditTaskAction with _$EditTaskAction {
  const factory EditTaskAction.onTitleChanged(String newValue) = OnTitleChanged;
  const factory EditTaskAction.onDescriptionChanged(String newValue) =
      OnDescriptionChanged;
  const factory EditTaskAction.completeButtonTapped() = CompleteButtonTapped;
  const factory EditTaskAction.uncompleteButtonTapped() =
      UncompleteButtonTapped;
  const factory EditTaskAction.addButtonTapped() = AddButtonTapped;
  const factory EditTaskAction.updateButtonTapped() = UpdateButtonTapped;
  const factory EditTaskAction.deleteButtonTapped() = DeleteButtonTapped;
}

@freezed
sealed class EditTaskEffect with _$EditTaskEffect {
  const factory EditTaskEffect.none() = None;
  const factory EditTaskEffect.close() = Close;
  const factory EditTaskEffect.showAlert({
    required AlertState state,
  }) = ShowAlert;
}

extension EditTaskUiStateEx on EditTaskUiState {
  bool get isSubmitButtonEnabled => item.title?.isNotEmpty == true;
  bool get isNewTask => item.createdAt == null;
}

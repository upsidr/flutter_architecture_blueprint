abstract class BaseContract<UiState, Action, Effect> {
  void consume();
  Future<void> send(Action action);
}

import 'package:rxdart/rxdart.dart';

extension BehaviorSubjectEx<T> on BehaviorSubject<T> {
  void update(T Function(T value) updater) {
    add(updater(value));
  }
}

part of '_index.dart';

class TodoDetailCtrl {
  init() {
    logxx.i(TodoDetailCtrl, '...');
  }

  action() => _dt.rxInt.setState((s) => s + 1);
}

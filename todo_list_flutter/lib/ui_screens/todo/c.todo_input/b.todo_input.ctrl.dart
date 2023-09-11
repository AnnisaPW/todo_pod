part of '_index.dart';

class TodoInputCtrl {
  init() => logxx.i(TodoInputCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);
}

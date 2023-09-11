part of '_index.dart';

class TodoEditCtrl {
  init() => logxx.i(TodoEditCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);
}

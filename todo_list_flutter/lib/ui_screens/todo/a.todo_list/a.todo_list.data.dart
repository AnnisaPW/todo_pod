part of '_index.dart';

class TodoListData {
  final rxTitle = 'TodoList'.inj();

  final rxInt = 0.inj();

  final rxTodoList = _pv.rxTodoList;

  final rxTodoBuffer = RM.inject<List<Todo>>(() => []);

  final rxSelected = _pv.rxSelectedId;
}

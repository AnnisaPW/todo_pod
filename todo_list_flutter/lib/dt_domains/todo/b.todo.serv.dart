part of '_index.dart';

class TodoServ {
  init() => logxx.i(TodoServ, 'init ...');

  readTodos() {
    try {
      _pv.rxTodoList.stateAsync = _rp.readTodos();
    } catch (e) {
      return Fun.handleException(e);
    }
  }

  setSelectedId(String id) {
    _pv.rxSelectedId.refresh();
    _pv.rxSelectedId.setState((s) => id);
  }

  readTodo(int? id) {
    try {
      _pv.rxTodo.stateAsync = _rp.readTodo(
        id,
      );
    } catch (e) {
      return Fun.handleException(e);
    }
  }

  createTodo(Todo todo) async {
    try {
      await _rp.createTodo(todo);
    } catch (e) {
      rethrow;
    }
  }

  updateTodo(Todo todo) async {
    try {
      await _rp.updateTodo(todo);
    } catch (e) {
      rethrow;
    }
  }

  initTodo() async {
    try {
      _pv.rxTodo.stateAsync = _rp.initTodo(_pv.rxSelectedId.st);
    } catch (e) {
      return Fun.handleException(e);
    }
  }

  updateProductListState(Todo todo, String id) {
    _pv.rxTodoList.setState((s) {
      final index = s.indexWhere((element) => element.todoId == id);
      return s[index] = todo;
    });
  }

  delete(String id) async {
    try {
      await _rp.deleteTodo(id);
    } catch (e) {
      rethrow;
    }
  }
}

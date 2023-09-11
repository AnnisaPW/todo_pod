part of '_index.dart';

class TodoRepo {
  Future<List<Todo>> readTodos() async {
    List<Todo> todos = [];
    try {
      final result = await _pv.client.todo.get();
      for (var todo in result) {
        todos.add(todo);
      }
    } catch (e) {
      rethrow;
    }
    return todos;
  }

  Future<void> createTodo(Todo todo) async {
    try {
      await _pv.client.todo.create(todo);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> updateTodo(Todo todo) async {
    try {
      await _pv.client.todo.update(todo);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteTodo(String id) async {
    try {
      await _pv.client.todo.delete(id);
    } catch (e) {
      rethrow;
    }
  }

  Future<Todo?> readTodo(int? id) async {
    // final id = todo.id;
    try {
      // if (id==null) {
      //   final index = _pv.rxTodoList.st.indexWhere((element) => element.todoId == todoId);
      //   return _pv.rxTodoList.st[index];
      // } else {
      return await _pv.client.todo.getById(id);
      // }
    } catch (e) {
      rethrow;
    }
  }

  Future<Todo?> initTodo(String id) async {
    try {
      await Future.delayed(400.milliseconds);
      final index = _pv.rxTodoList.st.indexWhere((element) => element.todoId == id);
      return _pv.rxTodoList.st[index];
    } catch (e) {
      rethrow;
    }
  }
}

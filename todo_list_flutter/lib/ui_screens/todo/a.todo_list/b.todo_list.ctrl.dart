part of '_index.dart';

class TodoListCtrl {
  init() => logxx.i(TodoListCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  select(String id) {
    _sv.setSelectedId(id);
    nav.to(Routes.todoDetail);
  }

  addBuffer() {
    final todo = Todo(
      todoId: const Uuid().v1(),
      title: 'todo ${generateWordPairs().take(1).join('')}',
      description: generateWordPairs().take(3).join(' '),
      isDone: false,
      createdAt: DateTime.now().toString(),
      // updatedAt: DateTime.now().toString(),
    );
    _dt.rxTodoBuffer.st = [..._dt.rxTodoBuffer.st]..insert(0, todo);
  }

  removeBuffer(int? id) {
    _dt.rxTodoBuffer.st = [..._dt.rxTodoBuffer.st]..removeWhere((element) => element.id == id);
  }

  Future<void> create() async {
    try {
      logx.i('create new todo');
      addBuffer();
      logx.i(_dt.rxTodoBuffer.st.toString());
      for (var t in _dt.rxTodoBuffer.st) {
        _sv.createTodo(t);
        _dt.rxTodoList.st = [..._dt.rxTodoList.st]..insert(0, t);
        removeBuffer(t.id);
      }
      logx.i(_dt.rxTodoBuffer.st.toString());
    } catch (e) {
      Fun.handleException(e);
    }
  }

  Future<void> update(Todo todo) async {
    try {
      logx.i('update todo');
      final newTodo = Todo(
        todoId: todo.todoId,
        id: todo.id,
        title: todo.title,
        description: todo.description,
        isDone: todo.isDone,
        createdAt: todo.createdAt,
        updatedAt: DateTime.now().toString(),
      );
      await _sv.updateTodo(newTodo);
      _sv.updateProductListState(todo, todo.todoId);
      // _sv.readTodos();
    } catch (e) {
      Fun.handleException(e);
    }
  }

  checkBox(Todo todo) {
    if (todo.isDone == true) {
      todo.isDone = false;
    } else {
      todo.isDone = true;
    }
    // todo.isDone = true;
    logx.w(todo.toString());
    _ct.update(todo);
  }

  Future<void> delete(String id) async {
    try {
      _sv.delete(id);
      _dt.rxTodoList.st = [..._dt.rxTodoList.st]..removeWhere((element) => element.todoId == id);
    } catch (e) {
      Fun.handleException(e);
    }
  }
}

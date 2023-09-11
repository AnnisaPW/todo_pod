import 'package:serverpod/serverpod.dart';

import '../generated/todo.dart';

class TodoEndpoint extends Endpoint {
  Future<List<Todo>> get(
    Session session,
  ) async {
    return await Todo.find(session, orderDescending: true, orderBy: ColumnString('updatedAt'));
  }

  Future<void> create(Session session, Todo todo) async {
    await Todo.insert(session, todo);
  }

  Future<void> delete(Session session, String id) async {
    await Todo.delete(
      session,
      where: (t) => t.todoId.equals(id),
    );
  }

  Future<void> update(Session session, Todo todo) async {
    await Todo.update(session, todo);
  }

  Future<Todo?> getById(Session session, int? id) async {
    return await Todo.findById(session, id!);
  }
}

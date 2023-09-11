part of '_index.dart';

class TodoProv {
  final client = Client('http://localhost:8080/')..connectivityMonitor = FlutterConnectivityMonitor();

  final rxTodoList = RM.injectFuture<List<Todo>>(
    () => Future.value([]),
    sideEffects: SideEffects(
      initState: () => _sv.readTodos(),
    ),
  );

  final rxSelectedId = RM.inject<String>(() => '');

  final rxTodo = RM.injectFuture<Todo?>(() => Future.value(null),
      sideEffects: SideEffects(
        initState: () => _sv.initTodo(),
      ));
}

part of '_index.dart';

class RouteMap {
  RouteMap._();

  static final data = {
    // Routes.root: (RouteData data) => const HomeView(),
    //* master -- ----- ----- ----- ----- -----
    Routes.cobaSatu: (RouteData data) => const CobaSatuView(),
    Routes.cobaDua: (RouteData data) => const CobaDuaView(),
    Routes.cobaTiga: (RouteData data) => const CobaTigaView(),
    Routes.todoList: (RouteData data) => const TodoListView(),
    Routes.todoDetail: (RouteData data) => const TodoDetailView(),
    Routes.todoInput: (RouteData data) => const TodoInputView(),
    Routes.todoEdit: (RouteData data) => const TodoEditView(),
  };
}

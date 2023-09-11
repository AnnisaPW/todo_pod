part of '_index.dart';

abstract class Data {
  static Injected<CobaSatuData> get cobaSatu => _cobaSatuData;
  static Injected<CobaDuaData> get cobaDua => _cobaDuaData;
  static Injected<CobaTigaData> get cobaTiga => _cobaTigaData;
  static Injected<TodoListData> get todoList => _todoListData;
  static Injected<TodoDetailData> get todoDetail => _todoDetailData;
  static Injected<TodoInputData> get todoInput => _todoInputData;
  static Injected<TodoEditData> get todoEdit => _todoEditData;
}

final _cobaSatuData = RM1.inj(CobaSatuData(), Ctrl.cobaSatu.init);
final _cobaDuaData = RM1.inj(CobaDuaData(), Ctrl.cobaDua.init);
final _cobaTigaData = RM1.inj(CobaTigaData(), Ctrl.cobaTiga.init);
final _todoListData = RM1.inj(TodoListData(), Ctrl.todoList.init);
final _todoDetailData = RM1.inj(TodoDetailData(), Ctrl.todoDetail.init);
final _todoInputData = RM1.inj(TodoInputData(), Ctrl.todoInput.init);
final _todoEditData = RM1.inj(TodoEditData(), Ctrl.todoEdit.init);

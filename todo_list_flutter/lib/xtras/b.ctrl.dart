part of '_index.dart';

abstract class Ctrl {
  static CobaSatuCtrl get cobaSatu => CobaSatuCtrl();
  static CobaDuaCtrl get cobaDua => CobaDuaCtrl();
  static CobaTigaCtrl get cobaTiga => CobaTigaCtrl();
  static TodoListCtrl get todoList => TodoListCtrl();
  static TodoDetailCtrl get todoDetail => TodoDetailCtrl();
  static TodoInputCtrl get todoInput => TodoInputCtrl();
  static TodoEditCtrl get todoEdit => TodoEditCtrl();
}

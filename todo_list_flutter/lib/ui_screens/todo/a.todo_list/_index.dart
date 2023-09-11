import 'dart:math';

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:todo_list_client/todo_list_client.dart';
import 'package:english_words/english_words.dart';

import '../../../app/_index.dart';
import '../../../dt_domains/_index.dart';
import '../../../xtras/_index.dart';

part 'a.todo_list.data.dart';
part 'b.todo_list.ctrl.dart';
part 'c.todo_list.view.dart';
part 'widgets/a.todo_list.appbar.dart';
part 'widgets/b.todo_list.fab.dart';
part 'widgets/c.todo_list.charlie.dart';
part 'widgets/d.todo_list.delta.dart';
part 'widgets/e.todo_list.echo.dart';

TodoListData get _dt => Data.todoList.st;
TodoListCtrl get _ct => Ctrl.todoList;

TodoProv get _pv => Prov.todo.st;
TodoServ get _sv => Serv.todo;



// static TodoListCtrl get todoList => TodoListCtrl();
// final _todoListData = RM1.inj(TodoListData(), Ctrl.todoList.init);
// static Injected<TodoListData> get todoList => _todoListData;
// export 'todo_list/_index.dart';


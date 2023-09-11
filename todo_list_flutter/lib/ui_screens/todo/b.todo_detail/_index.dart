import 'dart:math';

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../dt_domains/_index.dart';
import '../../../xtras/_index.dart';

part 'a.todo_detail.data.dart';
part 'b.todo_detail.ctrl.dart';
part 'c.todo_detail.view.dart';
part 'widgets/a.todo_detail.appbar.dart';
part 'widgets/b.todo_detail.fab.dart';
part 'widgets/c.todo_detail.charlie.dart';
part 'widgets/d.todo_detail.delta.dart';
part 'widgets/e.todo_detail.echo.dart';

TodoDetailData get _dt => Data.todoDetail.st;
TodoDetailCtrl get _ct => Ctrl.todoDetail;

TodoProv get _pv => Prov.todo.st;
TodoServ get _sv => Serv.todo;

// static TodoDetailCtrl get todoDetail => TodoDetailCtrl();
// final _todoDetailData = RM1.inj(TodoDetailData(), Ctrl.todoDetail.init);
// static Injected<TodoDetailData> get todoDetail => _todoDetailData;
// export 'todo_detail/_index.dart';


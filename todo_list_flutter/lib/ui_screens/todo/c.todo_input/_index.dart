import 'dart:math';

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.todo_input.data.dart';
part 'b.todo_input.ctrl.dart';
part 'c.todo_input.view.dart';
part 'widgets/a.todo_input.appbar.dart';
part 'widgets/b.todo_input.fab.dart';
part 'widgets/c.todo_input.charlie.dart';
part 'widgets/d.todo_input.delta.dart';
part 'widgets/e.todo_input.echo.dart';

TodoInputData get _dt => Data.todoInput.st;
TodoInputCtrl get _ct => Ctrl.todoInput;

// static TodoInputCtrl get todoInput => TodoInputCtrl();
// final _todoInputData = RM1.inj(TodoInputData(), Ctrl.todoInput.init);
// static Injected<TodoInputData> get todoInput => _todoInputData;
// export 'todo_input/_index.dart';


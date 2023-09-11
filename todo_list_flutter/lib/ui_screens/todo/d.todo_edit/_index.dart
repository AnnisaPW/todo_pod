import 'dart:math';

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.todo_edit.data.dart';
part 'b.todo_edit.ctrl.dart';
part 'c.todo_edit.view.dart';
part 'widgets/a.todo_edit.appbar.dart';
part 'widgets/b.todo_edit.fab.dart';
part 'widgets/c.todo_edit.charlie.dart';
part 'widgets/d.todo_edit.delta.dart';
part 'widgets/e.todo_edit.echo.dart';

TodoEditData get _dt => Data.todoEdit.st;
TodoEditCtrl get _ct => Ctrl.todoEdit;

// static TodoEditCtrl get todoEdit => TodoEditCtrl();
// final _todoEditData = RM1.inj(TodoEditData(), Ctrl.todoEdit.init);
// static Injected<TodoEditData> get todoEdit => _todoEditData;
// export 'todo_edit/_index.dart';


import 'dart:async';

import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:todo_list_client/todo_list_client.dart';

import '../../app/_index.dart';
import '../../xtras/_index.dart';

part 'a.todo.prov.dart';
part 'b.todo.serv.dart';
part 'c.todo.repo.dart';
part 'd.todo.repo.mock.dart';

TodoProv get _pv => Prov.todo.st;
TodoRepo get _rp => Repo.todo.st;
TodoServ get _sv => Serv.todo;

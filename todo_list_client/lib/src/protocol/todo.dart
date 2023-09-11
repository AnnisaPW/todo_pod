/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Todo extends _i1.SerializableEntity {
  Todo({
    this.id,
    required this.todoId,
    required this.title,
    required this.description,
    required this.isDone,
    this.createdAt,
    this.updatedAt,
  });

  factory Todo.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Todo(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      todoId:
          serializationManager.deserialize<String>(jsonSerialization['todoId']),
      title:
          serializationManager.deserialize<String>(jsonSerialization['title']),
      description: serializationManager
          .deserialize<String>(jsonSerialization['description']),
      isDone:
          serializationManager.deserialize<bool>(jsonSerialization['isDone']),
      createdAt: serializationManager
          .deserialize<String?>(jsonSerialization['createdAt']),
      updatedAt: serializationManager
          .deserialize<String?>(jsonSerialization['updatedAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String todoId;

  String title;

  String description;

  bool isDone;

  String? createdAt;

  String? updatedAt;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'todoId': todoId,
      'title': title,
      'description': description,
      'isDone': isDone,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }
}

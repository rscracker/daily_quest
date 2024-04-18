import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:daily_quest/app/data/todo/datasource/todo_datasource.dart';
import 'package:daily_quest/app/data/todo/model/todo_identifier.dart';
import 'package:daily_quest/app/data/todo/model/todo_model.dart';

class TodoRepository {
  final TodoDataSource _todoDataSource;
  TodoRepository(this._todoDataSource);

  Future<void> createTodo({required TodoIdentifier todoIdentifier}) async {
    String docId = _todoDataSource.generateDocId(todoIdentifier);
    TodoIdentifier updatedIdentifier = todoIdentifier.updateDocId(docId);
    await _todoDataSource.createTodo(updatedIdentifier);
  }

  Future<List<TodoModel>> getTodos(
      {required TodoIdentifier todoIdentifier}) async {
    QuerySnapshot snapshot = await _todoDataSource.getTodos(todoIdentifier);
    return snapshot.docs.map((doc) {
      return TodoModel.fromJson(doc.data() as Map<String, dynamic>);
    }).toList();
  }

  Future<TodoModel> getTodo({
    required TodoIdentifier todoIdentifier,
  }) async {
    String docId = _todoDataSource.generateDocId(todoIdentifier);
    TodoIdentifier updatedIdentifier = todoIdentifier.updateDocId(docId);
    DocumentSnapshot snapshot =
        await _todoDataSource.getTodo(updatedIdentifier);
    return TodoModel.fromJson(snapshot.data() as Map<String, dynamic>);
  }

  Future<void> updateTodo({
    required TodoIdentifier todoIdentifier,
  }) async {
    await _todoDataSource.updateTodo(todoIdentifier);
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:daily_quest/app/data/todo/model/todo_identifier.dart';
import 'package:daily_quest/app/data/todo/model/todo_model.dart';

class TodoDataSource {
  final todoCollection = FirebaseFirestore.instance.collection('todos');

  String generateDocId(TodoIdentifier todoIdentifier) {
    return todoCollection
        .doc(todoIdentifier.uid)
        .collection(todoIdentifier.getFormattedDate())
        .id;
  }

  Future<void> createTodo(TodoIdentifier todoIdentifier) async {
    try {
      await todoCollection
          .doc(todoIdentifier.uid)
          .collection(todoIdentifier.getFormattedDate())
          .doc(todoIdentifier.getDocId())
          .set(todoIdentifier.todo.toJson());
    } catch (e) {
      throw Exception('할 일 추가 실패 : $e');
    }
  }

  Future<QuerySnapshot> getTodos(TodoIdentifier todoIdentifier) async {
    try {
      return await todoCollection
          .doc(todoIdentifier.uid)
          .collection(todoIdentifier.getFormattedDate())
          .get();
    } catch (e) {
      throw Exception('할 일 가져오기 실패 : $e');
    }
  }

  Future<DocumentSnapshot> getTodo(TodoIdentifier todoIdentifier) async {
    try {
      return await todoCollection
          .doc(todoIdentifier.uid)
          .collection(todoIdentifier.getFormattedDate())
          .doc(todoIdentifier.getDocId())
          .get();
    } catch (e) {
      throw Exception('할 일 가져오기 실패 : $e');
    }
  }

  Future<void> updateTodo(TodoIdentifier todoIdentifier) async {
    try {
      await todoCollection
          .doc(todoIdentifier.uid)
          .collection(todoIdentifier.getFormattedDate())
          .doc(todoIdentifier.getDocId())
          .set(todoIdentifier.todo.toJson());
    } catch (e) {
      throw Exception('할 일 업데이트 실패 : $e');
    }
  }

  Future<void> deleteTodo(TodoIdentifier todoIdentifier) async {
    try {
      await todoCollection
          .doc(todoIdentifier.uid)
          .collection(todoIdentifier.getFormattedDate())
          .doc(todoIdentifier.getDocId())
          .delete();
    } catch (e) {
      throw Exception('할 일 삭제 실패: $e');
    }
  }
}

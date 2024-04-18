import 'package:daily_quest/app/data/todo/model/todo_model.dart';
import 'package:daily_quest/app/utils/utils.dart';

class TodoIdentifier {
  final String uid;
  final TodoModel todo;

  TodoIdentifier({
    required this.uid,
    required this.todo,
  });

  String getFormattedDate() {
    return Utils.formatDate(todo.scheduledDate);
  }

  String getDocId() {
    return todo.docId;
  }

  TodoIdentifier updateDocId(String docId) {
    return TodoIdentifier(uid: uid, todo: todo.copyWith(docId: docId));
  }
}

import 'package:daily_quest/app/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_model.freezed.dart';
part 'todo_model.g.dart';

@freezed
class TodoModel with _$TodoModel {
  const TodoModel._();
  const factory TodoModel({
    required String docId,
    required String todoName,
    required DateTime createdAt,
    required DateTime scheduledDate,
    required int taskDuration,
    @Default(false) bool isDone,
  }) = _TodoModel;

  factory TodoModel.fromJson(Map<String, Object?> json) =>
      _$TodoModelFromJson(json);

  TodoModel setDocId(String docId) {
    return copyWith(docId: docId);
  }

  TodoModel changeIsDone() {
    return copyWith(isDone: !isDone);
  }

  String getFormattedDate() {
    return Utils.formatDate(scheduledDate);
  }
}

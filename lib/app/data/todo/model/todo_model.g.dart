// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoModelImpl _$$TodoModelImplFromJson(Map<String, dynamic> json) =>
    _$TodoModelImpl(
      docId: json['docId'] as String,
      todoName: json['todoName'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      scheduledDate: DateTime.parse(json['scheduledDate'] as String),
      taskDuration: json['taskDuration'] as int,
      isDone: json['isDone'] as bool? ?? false,
    );

Map<String, dynamic> _$$TodoModelImplToJson(_$TodoModelImpl instance) =>
    <String, dynamic>{
      'docId': instance.docId,
      'todoName': instance.todoName,
      'createdAt': instance.createdAt.toIso8601String(),
      'scheduledDate': instance.scheduledDate.toIso8601String(),
      'taskDuration': instance.taskDuration,
      'isDone': instance.isDone,
    };

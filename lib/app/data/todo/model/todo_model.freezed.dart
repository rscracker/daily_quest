// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TodoModel _$TodoModelFromJson(Map<String, dynamic> json) {
  return _TodoModel.fromJson(json);
}

/// @nodoc
mixin _$TodoModel {
  String get docId => throw _privateConstructorUsedError;
  String get todoName => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get scheduledDate => throw _privateConstructorUsedError;
  int get taskDuration => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoModelCopyWith<TodoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoModelCopyWith<$Res> {
  factory $TodoModelCopyWith(TodoModel value, $Res Function(TodoModel) then) =
      _$TodoModelCopyWithImpl<$Res, TodoModel>;
  @useResult
  $Res call(
      {String docId,
      String todoName,
      DateTime createdAt,
      DateTime scheduledDate,
      int taskDuration,
      bool isDone});
}

/// @nodoc
class _$TodoModelCopyWithImpl<$Res, $Val extends TodoModel>
    implements $TodoModelCopyWith<$Res> {
  _$TodoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docId = null,
    Object? todoName = null,
    Object? createdAt = null,
    Object? scheduledDate = null,
    Object? taskDuration = null,
    Object? isDone = null,
  }) {
    return _then(_value.copyWith(
      docId: null == docId
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String,
      todoName: null == todoName
          ? _value.todoName
          : todoName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scheduledDate: null == scheduledDate
          ? _value.scheduledDate
          : scheduledDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      taskDuration: null == taskDuration
          ? _value.taskDuration
          : taskDuration // ignore: cast_nullable_to_non_nullable
              as int,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoModelImplCopyWith<$Res>
    implements $TodoModelCopyWith<$Res> {
  factory _$$TodoModelImplCopyWith(
          _$TodoModelImpl value, $Res Function(_$TodoModelImpl) then) =
      __$$TodoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String docId,
      String todoName,
      DateTime createdAt,
      DateTime scheduledDate,
      int taskDuration,
      bool isDone});
}

/// @nodoc
class __$$TodoModelImplCopyWithImpl<$Res>
    extends _$TodoModelCopyWithImpl<$Res, _$TodoModelImpl>
    implements _$$TodoModelImplCopyWith<$Res> {
  __$$TodoModelImplCopyWithImpl(
      _$TodoModelImpl _value, $Res Function(_$TodoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docId = null,
    Object? todoName = null,
    Object? createdAt = null,
    Object? scheduledDate = null,
    Object? taskDuration = null,
    Object? isDone = null,
  }) {
    return _then(_$TodoModelImpl(
      docId: null == docId
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String,
      todoName: null == todoName
          ? _value.todoName
          : todoName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scheduledDate: null == scheduledDate
          ? _value.scheduledDate
          : scheduledDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      taskDuration: null == taskDuration
          ? _value.taskDuration
          : taskDuration // ignore: cast_nullable_to_non_nullable
              as int,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoModelImpl extends _TodoModel {
  const _$TodoModelImpl(
      {required this.docId,
      required this.todoName,
      required this.createdAt,
      required this.scheduledDate,
      required this.taskDuration,
      this.isDone = false})
      : super._();

  factory _$TodoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoModelImplFromJson(json);

  @override
  final String docId;
  @override
  final String todoName;
  @override
  final DateTime createdAt;
  @override
  final DateTime scheduledDate;
  @override
  final int taskDuration;
  @override
  @JsonKey()
  final bool isDone;

  @override
  String toString() {
    return 'TodoModel(docId: $docId, todoName: $todoName, createdAt: $createdAt, scheduledDate: $scheduledDate, taskDuration: $taskDuration, isDone: $isDone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoModelImpl &&
            (identical(other.docId, docId) || other.docId == docId) &&
            (identical(other.todoName, todoName) ||
                other.todoName == todoName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.scheduledDate, scheduledDate) ||
                other.scheduledDate == scheduledDate) &&
            (identical(other.taskDuration, taskDuration) ||
                other.taskDuration == taskDuration) &&
            (identical(other.isDone, isDone) || other.isDone == isDone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, docId, todoName, createdAt,
      scheduledDate, taskDuration, isDone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoModelImplCopyWith<_$TodoModelImpl> get copyWith =>
      __$$TodoModelImplCopyWithImpl<_$TodoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoModelImplToJson(
      this,
    );
  }
}

abstract class _TodoModel extends TodoModel {
  const factory _TodoModel(
      {required final String docId,
      required final String todoName,
      required final DateTime createdAt,
      required final DateTime scheduledDate,
      required final int taskDuration,
      final bool isDone}) = _$TodoModelImpl;
  const _TodoModel._() : super._();

  factory _TodoModel.fromJson(Map<String, dynamic> json) =
      _$TodoModelImpl.fromJson;

  @override
  String get docId;
  @override
  String get todoName;
  @override
  DateTime get createdAt;
  @override
  DateTime get scheduledDate;
  @override
  int get taskDuration;
  @override
  bool get isDone;
  @override
  @JsonKey(ignore: true)
  _$$TodoModelImplCopyWith<_$TodoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

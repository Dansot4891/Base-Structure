import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_model.g.dart';

// JsonSerializable을 이용하여
// 직렬화 및 역직렬화 함수 구현
// 실제 내부 함수는 .g.dart 파일에 내장되어있음
//    => 변경 X
@JsonSerializable()
class TodoModel {
  final int id;
  final String title;
  final String content;

  TodoModel({
    required this.id,
    required this.title,
    required this.content,
  });

  factory TodoModel.fromJson(Map<String, dynamic> json) =>
      _$TodoModelFromJson(json);

  Map<String, dynamic> toJson() => _$TodoModelToJson(this);
}

import 'package:dalemy_ex/features/feature/data/model/todo_model.dart';
import 'package:dalemy_ex/features/feature/domain/entity/todo_entity.dart';

// Model 을 Entity로 변환해주는
// Model의 Extension
// ⚠️ 서버로 요청을 보낼 때는
//    Entity를 Model로 변환하기도 한다.
extension TodoMapper on TodoModel {
  TodoEntity toEntity() {
    return TodoEntity(
      id: id,
      title: title,
      content: content,
    );
  }
}

import 'package:dalemy_ex/feature/domain/entity/todo_entity.dart';

// Todo 화면에서 이용되는 데이터들을 담는 State
class TodoState {
  final List<TodoEntity> todos;
  // 이외의 뷰에서 이용되는 추가 데이터들

  TodoState({
    required this.todos,
  });

  TodoState copyWith({
    List<TodoEntity>? todos,
  }) {
    return TodoState(
      todos: todos ?? this.todos,
    );
  }
}

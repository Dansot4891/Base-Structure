import 'package:dalemy_ex/features/feature/domain/entity/todo_entity.dart';

// Repository의 추상 인터페이스
// 함수 선언만 하고, 실제 함수 로직은 RepositoryImpl 구현체에서 구현된다.
abstract interface class TodoRepository {
  Future<List<TodoEntity>> getTodos();
}

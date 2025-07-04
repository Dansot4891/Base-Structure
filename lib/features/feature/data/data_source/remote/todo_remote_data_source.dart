import 'package:dalemy_ex/features/feature/data/model/todo_model.dart';

// 원격 저장소와 통신하는 추상 인터페이스
// 함수 선언만 하고, 실제 함수 로직은 DataSourceImpl 구현체에서 구현된다.
abstract interface class TodoRemoteDataSource {
  Future<List<TodoModel>> getTodos();
}

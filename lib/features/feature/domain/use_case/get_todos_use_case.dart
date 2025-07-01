import 'package:dalemy_ex/core/module/error/result.dart';
import 'package:dalemy_ex/core/module/exception/app_exception.dart';
import 'package:dalemy_ex/features/feature/domain/entity/todo_entity.dart';
import 'package:dalemy_ex/features/feature/domain/repository/todo_repository.dart';

// 하나의 기능을 담당하는 유스케이스
// 관련 feature의 Repository를 가져와 하나의 기능만을 담당한다.
// 공통적으로, 유스케이스내에서 try-catch 구문을 이용하여 에러를 잡는다.
class GetTodosUseCase {
  final TodoRepository _repo;

  GetTodosUseCase(this._repo);

  Future<Result<List<TodoEntity>>> execute() async {
    try {
      final todos = await _repo.getTodos();
      return Result.success(todos);
    } catch (e) {
      return const Result.error(UnexpectedException());
    }
  }
}

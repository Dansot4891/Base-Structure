import 'package:dalemy_ex/app/di/app_di.dart';
import 'package:dalemy_ex/core/module/error/result.dart';
import 'package:dalemy_ex/feature/domain/entity/todo_entity.dart';
import 'package:dalemy_ex/feature/domain/use_case/get_todos_use_case.dart';
import 'package:dalemy_ex/feature/presentation/controller/todo_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todo_provider.g.dart';

// Todo 화면의 비즈니스 로직, 상태 변화, view에 notifier를 담당하는
// 일종의 ViewModel 역할을 하는 provider
// ---
// riverpod generator를 이용
@riverpod
class TodoProvider extends _$TodoProvider {
  @override
  Future<TodoState> build() async {
    return TodoState(todos: []);
  }

  // result 패턴을 이용하여
  // 성공/실패시 provider내에서 상태를 처리
  void getTodos() async {
    final result = await locator<GetTodosUseCase>().execute();
    switch (result) {
      case Success<List<TodoEntity>>():
        print('성공');
      case Error<List<TodoEntity>>():
        print('실패');
    }
  }
}

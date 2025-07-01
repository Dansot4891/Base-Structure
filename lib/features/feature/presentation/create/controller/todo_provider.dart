import 'package:dalemy_ex/app/di/app_di.dart';
import 'package:dalemy_ex/core/module/error/result.dart';
import 'package:dalemy_ex/features/feature/domain/entity/todo_entity.dart';
import 'package:dalemy_ex/features/feature/domain/use_case/get_todos_use_case.dart';
import 'package:dalemy_ex/features/feature/presentation/create/controller/todo_state.dart';
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
    final result = await locator<GetTodosUseCase>().execute();
    switch (result) {
      case Success<List<TodoEntity>>():
        return TodoState(todos: result.data);
      case Error<List<TodoEntity>>():
        state = AsyncValue.error(result.error, StackTrace.current);
        throw result.error;
    }
  }

  // state.whenData를 활용하여
  // 데이터가 있을 때 클릭 이벤트 처리
  void clickTodo(int index) async {
    state.whenData((value) {
      print(value.todos[index].toString());
    });
  }
}

import 'package:dalemy_ex/feature/data/data_source/local/todo_local_data_source.dart';
import 'package:dalemy_ex/feature/data/model/todo_model.dart';

// 로컬 저장소와 통신하는 실제 구현체 객체
// 실제 로컬 저장소와 통신하는 로직을 구현한다.
class TodoLocalDataSourceImpl implements TodoLocalDataSource {
  @override
  Future<List<TodoModel>> getTodos() async {
    return [];
  }
}

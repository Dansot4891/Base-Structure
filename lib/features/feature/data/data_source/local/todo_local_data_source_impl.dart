import 'package:dalemy_ex/features/feature/data/data_source/local/todo_local_data_source.dart';
import 'package:dalemy_ex/features/feature/data/model/todo_model.dart';

// 로컬 저장소와 통신하는 실제 구현체 객체
// 실제 로컬 저장소와 통신하는 로직을 구현한다.
class TodoLocalDataSourceImpl implements TodoLocalDataSource {
  @override
  Future<List<TodoModel>> getTodos() async {
    return [
      TodoModel(id: 1, title: 'title', content: 'content'),
      TodoModel(id: 2, title: 'title2', content: 'content2'),
      TodoModel(id: 3, title: 'title3', content: 'content3'),
    ];
  }
}

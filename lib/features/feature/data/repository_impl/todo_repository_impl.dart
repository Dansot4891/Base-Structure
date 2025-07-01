import 'package:dalemy_ex/features/feature/data/data_source/local/todo_local_data_source.dart';
import 'package:dalemy_ex/features/feature/data/data_source/remote/todo_remote_data_source.dart';
import 'package:dalemy_ex/features/feature/data/mapper/todo_mapper.dart';
import 'package:dalemy_ex/features/feature/domain/entity/todo_entity.dart';
import 'package:dalemy_ex/features/feature/domain/repository/todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  final TodoLocalDataSource _dataSource;

  TodoRepositoryImpl(this._dataSource);

  @override
  Future<List<TodoEntity>> getTodos() async {
    final resp = await _dataSource.getTodos();
    return resp.map((e) => e.toEntity()).toList();
  }
}

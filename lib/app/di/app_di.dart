import 'package:dalemy_ex/feature/data/data_source/local/todo_local_data_source.dart';
import 'package:dalemy_ex/feature/data/data_source/remote/todo_remote_data_source.dart';
import 'package:dalemy_ex/feature/data/data_source/remote/todo_remote_data_source_impl.dart';
import 'package:dalemy_ex/feature/data/data_source/local/todo_local_data_source_impl.dart';
import 'package:dalemy_ex/feature/data/data_source/repository_impl/todo_repository_impl.dart';
import 'package:dalemy_ex/feature/domain/repository/todo_repository.dart';
import 'package:dalemy_ex/feature/domain/use_case/get_todos_use_case.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

// 앱의 의존성 주입을 전역적으로 관리
// registerSingleton - 싱글톤(인스턴스 1개)
// registerFactory - 매번 새로운 인스턴스 생성
final locator = GetIt.instance;

void diSetup() {
  // Data Source
  locator
      .registerSingleton<TodoRemoteDataSource>(TodoRemoteDataSourceImpl(Dio()));
  locator.registerSingleton<TodoLocalDataSource>(TodoLocalDataSourceImpl());

  // Repository
  locator.registerSingleton<TodoRepository>(TodoRepositoryImpl(locator()));

  // UseCase
  locator.registerSingleton(GetTodosUseCase(locator()));
}

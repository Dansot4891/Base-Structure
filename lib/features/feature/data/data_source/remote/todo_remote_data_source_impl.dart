import 'package:dalemy_ex/feature/data/data_source/remote/todo_remote_data_source.dart';
import 'package:dalemy_ex/feature/data/model/todo_model.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

part 'todo_remote_data_source_impl.g.dart';

// 원격 저장소와 통신하는 실제 구현체 객체
// 실제 로컬 저장소와 통신하는 로직을 구현한다.
// => 실제 내부 코드는 'Retrofit'이라는 패키지가 대신해서 구현을 해준다.
//    => 해당 코드 내용도 .g.dart 파일에서 구현되어있다.
@RestApi(baseUrl: '')
abstract class TodoRemoteDataSourceImpl implements TodoRemoteDataSource {
  factory TodoRemoteDataSourceImpl(Dio dio) = _TodoRemoteDataSourceImpl;

  // ---------------- cards ----------------
  @override
  @GET('/todo')
  @Headers({'accessToken': 'true'})
  Future<List<TodoModel>> getTodos();
}

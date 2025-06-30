import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_action.freezed.dart';

// Todo 화면에서 이루어지는 사용자 액션을 설정하는 sealed class
@freezed
sealed class TodoAction with _$TodoAction {
  const factory TodoAction.tapButton() = TapButton;

  const factory TodoAction.tapButton2() = TapButton2;
}

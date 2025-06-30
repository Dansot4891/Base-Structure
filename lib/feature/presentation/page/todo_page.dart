import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dalemy_ex/feature/presentation/controller/todo_action.dart';
import 'package:dalemy_ex/feature/presentation/controller/todo_state.dart';

class TodoPage extends StatelessWidget {
  // 해당 뷰의 state
  final AsyncValue<TodoState> state;
  // 해당 뷰에서 사용자가 가능한 Action
  final void Function(TodoAction action) onAction;
  const TodoPage({
    super.key,
    required this.state,
    required this.onAction,
  });

  @override
  Widget build(BuildContext context) {
    // Riverpod 에서 제공해주는
    // AsyncValue의 when을 활용하여
    // 정상/에러/로딩 상태의 뷰를 처리
    return state.when(
      // 정상적으로 데이터가 로드됐을 때의 뷰
      data: (value) {
        return Container(
          child: GestureDetector(
            // 사용자 액션
            onTap: () => onAction(const TodoAction.tapButton()),
            child: const Text('버튼'),
          ),
        );
      },
      // 에러가 발생했을 때의 뷰
      error: (err, stackTrace) {
        return Container();
      },
      // 로딩 상태일 때의 뷰
      loading: () {
        return const CircularProgressIndicator();
      },
    );
  }
}

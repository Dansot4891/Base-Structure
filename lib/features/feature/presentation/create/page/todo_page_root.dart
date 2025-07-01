import 'package:dalemy_ex/features/feature/presentation/create/controller/todo_action.dart';
import 'package:dalemy_ex/features/feature/presentation/create/controller/todo_event.dart';
import 'package:dalemy_ex/features/feature/presentation/create/controller/todo_provider.dart';
import 'package:dalemy_ex/features/feature/presentation/create/page/todo_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Todo Page에서 사용되는
// 사용자 액션과 해당 뷰의 state를 할당시켜주는 root page
class TodoPageRoot extends ConsumerWidget with TodoEvent {
  const TodoPageRoot({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(todoProviderProvider);
    return TodoPage(
      state: state,
      onAction: (action) => actionHandling(ref, context, action: action),
    );
  }

  // 사용자 액션 핸들링
  // 자유롭게 추가 가능
  void actionHandling(
    WidgetRef ref, 
    BuildContext context,{
    required TodoAction action,
  }) async {
    final provider = ref.read(todoProviderProvider.notifier);
    switch (action) {
      case TapTodo(:final index):
        provider.clickTodo(index);
      case TapButton2():
        todoShowSnackBar(context, 'message');
    }
  }
}

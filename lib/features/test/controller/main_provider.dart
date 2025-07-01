import 'package:dalemy_ex/app/di/app_di.dart';
import 'package:dalemy_ex/core/module/error/result.dart';
import 'package:dalemy_ex/features/feature/domain/entity/todo_entity.dart';
import 'package:dalemy_ex/features/feature/domain/use_case/get_todos_use_case.dart';
import 'package:dalemy_ex/features/feature/presentation/create/controller/todo_state.dart';
import 'package:dalemy_ex/features/test/controller/main_state.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main_provider.g.dart';

// Todo 화면의 비즈니스 로직, 상태 변화, view에 notifier를 담당하는
// 일종의 ViewModel 역할을 하는 provider
// ---
// riverpod generator를 이용
@riverpod
class MainProvider extends _$MainProvider {
  @override
  MainState build() {
    final homeScrollController = ScrollController();
    final wowBoardScrollController = ScrollController();
    final myPageScrollController = ScrollController();

    return MainState(
      homeScrollController: homeScrollController,
      wowBoardScrollController: wowBoardScrollController,
      myPageScrollController: myPageScrollController,
    );
  }
}

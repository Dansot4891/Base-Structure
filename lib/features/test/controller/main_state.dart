import 'package:flutter/widgets.dart';

class MainState {
  final ScrollController homeScrollController;
  final ScrollController wowBoardScrollController;
  final ScrollController myPageScrollController;

  MainState({
    required this.homeScrollController,
    required this.wowBoardScrollController,
    required this.myPageScrollController,
  });

  MainState copyWith({
    ScrollController? homeScrollController,
    ScrollController? wowBoardScrollController,
    ScrollController? myPageScrollController,
  }) {
    return MainState(
      homeScrollController: homeScrollController ?? this.homeScrollController,
      wowBoardScrollController:
          wowBoardScrollController ?? this.wowBoardScrollController,
      myPageScrollController:
          myPageScrollController ?? this.myPageScrollController,
    );
  }
}

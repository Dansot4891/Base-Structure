import 'package:dalemy_ex/feature/presentation/page/todo_page_root.dart';
import 'package:dalemy_ex/feature/presentation/todo_page2.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// 바텀 네비게이션바 관련 shell route key 값
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final routes = [
  // 라우터들
  ...AppPath.routes,
];

// AppRoute들을 enum으로 정리
enum AppRoute {
  todo(path: '/todo', name: 'todo'),
  todo2(path: '/todo2', name: 'todo2');

  final String path;
  final String name;

  const AppRoute({required this.path, required this.name});
}

// ------------------------------------------
// feature나 특정 단위로 묶어서
// 해당 단위의 라우팅들만 설정하는 추상 객체
abstract class WowPath {
  static final List<GoRoute> routes = [
    GoRoute(
      path: AppRoute.todo.path,
      name: AppRoute.todo.name,
      builder: (context, state) {
        return const TodoPageRoot();
      },
    ),
    GoRoute(
      path: AppRoute.todo2.path,
      name: AppRoute.todo2.name,
      builder: (context, state) {
        return const TodoPage2();
      },
    ),
  ];
}

// 뒤로가기
void pop(BuildContext context) {
  context.pop();
}

// 전체 앱에서 화면 이동할 때 사용하는 함수
Future<void> navigate(
  BuildContext context, {
  required AppRoute route,
  NavigationMethod method = NavigationMethod.push,
}) async {
  final goRouter = GoRouter.of(context);

  switch (method) {
    case NavigationMethod.push:
      await goRouter.push(route.path);
      break;
    case NavigationMethod.replace:
      await goRouter.replace(route.path);
      break;
    case NavigationMethod.go:
      goRouter.go(route.path);
      break;
    case NavigationMethod.pushReplacement:
      await goRouter.pushReplacement(route.path);
      break;
  }
}

// Navigation 이동 방법
enum NavigationMethod { push, replace, go, pushReplacement }

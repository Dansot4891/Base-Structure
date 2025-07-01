import 'package:dalemy_ex/app/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

// 앱의 라우터
class AppRouter {
  static GoRouter appRouter() {
    final router = GoRouter(
      routes: routes,
      navigatorKey: rootNavigatorKey,
      initialLocation: AppRoute.home.path, // RootTab의 홈 화면으로 시작
    );

    return router;
  }
}

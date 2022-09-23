import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../ui/screens/home/home_screen.dart';

class AppRouter {
  static GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const HomeScreen(),
      ),
    ],
  );
}

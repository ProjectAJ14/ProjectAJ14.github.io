import 'package:ajay_portfolio/ui/theme/theme.dart';
import 'package:flutter/material.dart';

import 'utils/assets/assets.dart';
import 'utils/router/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    precacheImage(const AssetImage(Assets.icon), context);
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: myTheme,
    );
  }
}

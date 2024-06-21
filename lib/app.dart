import 'package:flutter/material.dart';
import 'package:my_site/ui/theme/theme.dart';

import 'utils/assets/assets.dart';
import 'utils/router/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    precacheImage(const AssetImage(Assets.icon), context);
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: myTheme,
    );
  }
}

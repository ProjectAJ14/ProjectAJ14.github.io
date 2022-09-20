import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GoRouter.setUrlPathStrategy(UrlPathStrategy.path);
  runApp(const MyApp());
}

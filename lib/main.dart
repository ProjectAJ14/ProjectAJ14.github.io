import 'package:flutter/material.dart';
import 'app.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  usePathUrlStrategy();

  runApp(const MyApp());
}

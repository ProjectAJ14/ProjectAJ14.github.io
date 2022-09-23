import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:my_site/data/repos/links_repo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).go('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return Container(
      color: theme.shadowColor,
      child: Center(
        child: Image.asset(
          'assets/images/loading.gif',
          width: size.width * 0.25,
          height: size.width * 0.25,
        ),
      ).animate().scale().fadeOut(duration: 2000.ms),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final links = LinkRepo().links;
    for (int index = 0; index < links.length; index++) {
      String i = links[index].title.toLowerCase();
      String path = 'assets/images/$i.png';
      precacheImage(AssetImage(path), context);
    }
  }
}

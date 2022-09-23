import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:my_site/utils/assets/assets.dart';

import '../../../data/repos/links_repo.dart';
import '../../widgets/link_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(const AssetImage('assets/icon.png'), context);
    final links = [
      ...LinkRepo.topLinks,
      ...LinkRepo.bottomLinks,
    ];
    for (int index = 0; index < links.length; index++) {
      String i = links[index].title.toLowerCase();
      String path = 'assets/images/$i.png';
      precacheImage(AssetImage(path), context);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 500;

    return Scaffold(
      backgroundColor: theme.shadowColor,
      body: ListView(
        padding:
            EdgeInsets.symmetric(horizontal: isMobile ? 16 : size.width / 5),
        children: [
          const SizedBox(height: 100),
          Center(
            child: Image(
              image: const AssetImage(Assets.icon),
              height: size.width * (isMobile ? 0.25 : 0.15),
              width: size.width * (isMobile ? 0.25 : 0.15),
            ),
          )
              .animate()
              .fadeIn(duration: 500.ms)
              .scale()
              .then(
                delay: 1000.ms,
              )
              .desaturate(),
          const SizedBox(height: 20),
          Center(
            child: SizedBox(
              height: size.width * 0.1,
              width: size.width * 0.35,
              child: FittedBox(
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      "Project_AJ",
                      textStyle: theme.textTheme.headline1!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      speed: const Duration(milliseconds: 200),
                      textAlign: TextAlign.center,
                    ),
                  ],
                  isRepeatingAnimation: false,
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (int i = 0; i < LinkRepo.topLinks.length; i++)
                Expanded(
                  child: LinkWidget(LinkRepo.topLinks[i], size: 50)
                      .animate()
                      .fadeIn(delay: 500.ms, duration: 1000.ms)
                      .then()
                      .slide(
                        duration: 800.ms,
                        begin: const Offset(0, 0.0),
                        end: i % 2 == 0
                            ? const Offset(0, 0.3)
                            : const Offset(0, -0.3),
                      ),
                ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (int i = 0; i < LinkRepo.bottomLinks.length; i++)
                Expanded(
                  child: LinkWidget(LinkRepo.bottomLinks[i], size: 50)
                      .animate()
                      .fadeIn(delay: 500.ms, duration: 1000.ms)
                      .then()
                      .slide(
                        duration: 800.ms,
                        begin: const Offset(0, 0.0),
                        end: i == 0 || i == LinkRepo.bottomLinks.length - 1
                            ? const Offset(0, 0.3)
                            : const Offset(0, -0.3),
                      ),
                ),
            ],
          ),
          const SizedBox(height: 40),
          Center(
            child: Text(
              "Flutter Developer with 5+ years of experience "
              "and a demonstrated history of leading high "
              "performing teams to develop mobile applications "
              "and libraries using Google's Flutter framework "
              "since its inception.",
              style: theme.textTheme.bodySmall!.copyWith(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ).animate().fade(duration: 500.ms).scale(delay: 500.ms),
          const SizedBox(height: 20),
        ],
      ).animate(delay: 1000.ms).slide(
            duration: 500.ms,
            begin: const Offset(0, 0.3),
            end: const Offset(0, 0),
          ),
    );
  }
}

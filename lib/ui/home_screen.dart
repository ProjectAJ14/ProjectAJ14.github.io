import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:my_site/utils/assets/assets.dart';

import '../data/repos/links_repo.dart';
import 'widgets/link_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: theme.shadowColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: size.width > 500 ? size.width / 5 : 16),
        children: [
          const SizedBox(height: 100),
          Center(
            child: Image(
              image: const AssetImage(Assets.icon),
              height: size.width * 0.15,
              width: size.width * 0.15,
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: SizedBox(
              height: size.width * 0.1,
              width: size.width * 0.35,
              child: FittedBox(
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      "Ajay Kumar",
                      textStyle: theme.textTheme.headline1!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      speed: const Duration(milliseconds: 300),
                      textAlign: TextAlign.center,
                    ),
                  ],
                  totalRepeatCount: 0,
                  pause: const Duration(milliseconds: 1000),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                  isRepeatingAnimation: false,
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (int i = 0; i < LinkRepo().links.length; i++)
                Expanded(
                  child: LinkWidget(LinkRepo().links[i], size: 50)
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
          const SizedBox(height: 40),
          Center(
            child: Text(
              "Flutter Developer with 5+ years of experience and a demonstrated history of leading high performing teams to develop mobile applications and libraries using Google's Flutter framework since its inception.",
              style: theme.textTheme.bodySmall!.copyWith(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ).animate().fade(duration: 500.ms).scale(delay: 500.ms),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

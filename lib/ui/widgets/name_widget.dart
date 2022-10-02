import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return FittedBox(
      child: AnimatedTextKit(
        animatedTexts: [
          TypewriterAnimatedText(
            name,
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
    );
  }
}

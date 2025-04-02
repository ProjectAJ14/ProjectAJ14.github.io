import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 32.0,
      ),
      child: Text(
        "Flutter Developer with 8+ years of experience "
        "and a demonstrated history of leading high "
        "performing teams to develop mobile applications "
        "and libraries using Google's Flutter framework "
        "since its inception.",
        style: theme.textTheme.bodySmall!.copyWith(
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ).animate(delay: 500.ms).fade(duration: 500.ms).scale(delay: 500.ms),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 500;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * (isMobile ? 0.10 : 0.15)),
      child: Text(
        "Flutter Developer with 7+ years of experience "
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

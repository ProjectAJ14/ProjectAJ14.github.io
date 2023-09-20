import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:im_animations/im_animations.dart';

import '../../utils/assets/assets.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 500;

    return Sonar(
      radius: size.width * (isMobile ? 0.25 : 0.15),
      duration: const Duration(seconds: 2),
      waveColor: theme.colorScheme.error,
      child: CircleAvatar(
        radius: size.width * (isMobile ? 0.25 : 0.15),
        backgroundImage: const AssetImage(Assets.icon),
      ),
    )
        .animate()
        .fadeIn(duration: 1000.ms)
        .scale()
        .then(delay: 500.ms)
        .desaturate(duration: 3000.ms);
  }
}

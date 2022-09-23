import 'package:flutter/material.dart';
import 'package:my_site/data/repos/models/links.dart';

class AppIcon extends StatelessWidget {
  final Link link;
  final double size;

  const AppIcon(
    this.link, {
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String i = link.title.toLowerCase();
    String path = 'assets/images/$i.png';
    return Container(
      padding: const EdgeInsets.all(8),
      width: size,
      height: size,
      child: Center(
        child: Image.asset(
          path,
          width: size,
          height: size,
          color: link.color,
          filterQuality: FilterQuality.high,
        ),
      ),
    );
  }
}

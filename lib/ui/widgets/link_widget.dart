import 'package:flutter/material.dart';
import 'package:my_site/data/repos/models/links.dart';

class LinkWidget extends StatelessWidget {
  final Link link;
  final double size;

  const LinkWidget(
    this.link, {
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String i = link.title.toLowerCase();
    String path = 'assets/images/$i.png';
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
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

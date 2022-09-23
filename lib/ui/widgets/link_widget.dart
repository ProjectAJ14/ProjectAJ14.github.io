import 'package:flutter/material.dart';
import 'package:my_site/data/repos/models/links.dart';
import 'package:my_site/data/services/url_service.dart';

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
      child: GestureDetector(
        onTap: () => AppURlService.launchURL(link.url),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [
              Image.asset(
                path,
                width: size,
                height: size,
                filterQuality: FilterQuality.high,
              ),
              const SizedBox(height: 4),
              FittedBox(
                child: Text(
                  link.title,
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

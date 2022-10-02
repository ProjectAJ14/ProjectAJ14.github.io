import 'package:flutter/material.dart';
import 'package:my_site/data/repos/models/links.dart';
import 'package:my_site/data/services/url_service.dart';

class NewLinkWidget extends StatelessWidget {
  const NewLinkWidget({
    Key? key,
    required this.link,
  }) : super(key: key);

  final Link link;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => AppURlService.launchURL(link.url),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Padding(
          padding: EdgeInsets.all(size.width * 0.02),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.network(
                link.image,
                color: Colors.black.withOpacity(0.5),
                colorBlendMode: BlendMode.darken,
              ),
              Center(
                child: Image.asset(
                  'assets/images/youtube.png',
                  width: size.width * 0.05,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

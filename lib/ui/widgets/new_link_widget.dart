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
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: size.width * 0.2,
            margin: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: size.width * 0.1,
            ),
            child: Image.network(
              link.image,
              color: Colors.black.withOpacity(0.5),
              colorBlendMode: BlendMode.darken,
            ),
          ),
          Center(
            child: Image.asset(
              'assets/images/youtube.png',
              width: size.width * 0.05,
            ),
          )
        ],
      ),
    );
  }
}

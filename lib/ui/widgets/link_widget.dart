import 'package:flutter/material.dart';
import 'package:my_site/data/services/url_service.dart';

import '../../data/repos/models/links.dart';

class LinkWidget extends StatelessWidget {
  const LinkWidget({
    Key? key,
    required this.link,
  }) : super(key: key);

  final Link link;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return InkResponse(
      onTap: () => AppURlService.launchURL(link.url),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
        child: Image(
          color: link.title == 'Github' ? Colors.grey : null,
          image: AssetImage(link.image),
        ),
      ),
    );
  }
}

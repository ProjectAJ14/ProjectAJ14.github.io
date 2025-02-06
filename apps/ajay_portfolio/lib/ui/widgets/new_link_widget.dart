import 'package:ajay_portfolio/data/repos/models/links.dart';
import 'package:ajay_portfolio/data/services/url_service.dart';
import 'package:flutter/material.dart';

class NewLinkWidget extends StatelessWidget {
  const NewLinkWidget({
    super.key,
    required this.link,
  });

  final Link link;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 500;

    void onImageError() {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: RichText(
            text: TextSpan(
              text: 'Could not load ',
              children: [
                TextSpan(
                  text: link.title,
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return GestureDetector(
      onTap: () => AppURlService.launchURL(
        link.url,
        onError: onImageError,
      ),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Padding(
          padding: EdgeInsets.all(size.width * 0.02),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.network(
                link.image,
                color: Color.fromRGBO(0, 0, 0, 0.5),
                colorBlendMode: BlendMode.darken,
              ),
              Center(
                child: Image.asset(
                  'assets/images/youtube.png',
                  width: size.width * (isMobile ? 0.15 : 0.05),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

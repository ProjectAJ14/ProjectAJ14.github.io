import 'package:animate_it/animate_it.dart';
import 'package:animate_on_hover/animate_on_hover.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio/data/repos/models/links.dart';
import 'package:portfolio/data/services/url_service.dart';

class LinkWidget extends StatelessWidget {
  final Link link;
  final double size;

  const LinkWidget(
    this.link, {
    super.key,
    this.size = 50,
  });

  @override
  Widget build(BuildContext context) {
    final image = link.title.toLowerCase();
    final path = 'assets/images/$image.png';

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

    return RubberBand(
      delay: 3000.ms,
      child: Center(
        child: GestureDetector(
          onTap: () => AppURlService.launchURL(
            link.url,
            onError: onImageError,
          ),
          child: Container(
            constraints: BoxConstraints(
              maxWidth: size,
              maxHeight: size,
            ),
            padding: const EdgeInsets.all(4.0),
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(
                    path,
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.contain,
                  ),
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
        ).increaseSizeOnHover(
          1.5,
          duration: 250.ms,
        ),
      ),
    );
  }
}

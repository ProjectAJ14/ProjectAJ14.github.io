import 'package:flutter/material.dart';
import 'package:my_site/utils/assets/assets.dart';

import '../data/repos/links_repo.dart';
import '../data/services/url_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: theme.shadowColor,
      body: ListView(
        children: [
          const SizedBox(height: 100),
          Center(
            child: Image(
              image: const AssetImage(Assets.icon),
              height: size.width * 0.2,
              width: size.width * 0.2,
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: SizedBox(
              height: size.width * 0.1,
              width: size.width * 0.35,
              child: FittedBox(
                child: Text(
                  'Ajay Kumar',
                  style: theme.textTheme.headline1!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: Text(
                "Flutter Developer with 5+ years of experience and a demonstrated history of leading high performing teams to develop mobile applications and libraries using Google's Flutter framework since its inception.",
                style: theme.textTheme.bodySmall!.copyWith(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(height: 20),
          ...LinkRepo()
              .links
              .map(
                (e) => Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20,
                        ),
                        minimumSize: Size(size.width * 0.5, 50),
                      ),
                      onPressed: () {
                        AppURlService.launchURL(e.url);
                      },
                      child: Text(
                        e.title,
                      ),
                    ),
                  ),
                ),
              )
              .toList()
        ],
      ),
    );
  }
}

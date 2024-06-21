import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../data/repos/links_repo.dart';
import '../../widgets/avatar_widget.dart';
import '../../widgets/description_widget.dart';
import '../../widgets/link_widget.dart';
import '../../widgets/name_widget.dart';
import '../../widgets/new_link_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      preCacheImage(context);
    });
  }

  void preCacheImage(BuildContext context) {
    for (var link in [...LinkRepo.topLinks, ...LinkRepo.bottomLinks]) {
      precacheImage(
        AssetImage('assets/images/${link.title.toLowerCase()}.png'),
        context,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.shadowColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        children: [
          const Center(child: AvatarWidget()),
          const SizedBox(height: 20),
          const Center(
            child: NameWidget(
              name: ' Ajay Kumar',
            ),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (int i = 0; i < LinkRepo.topLinks.length; i++)
                Expanded(
                  child: LinkWidget(LinkRepo.topLinks[i])
                      .animate(delay: 500.ms)
                      .fadeIn(delay: 500.ms, duration: 1000.ms)
                      .then()
                      .slide(
                        duration: 800.ms,
                        begin: const Offset(0, 0.0),
                        end: i % 2 == 0
                            ? const Offset(0, 0.3)
                            : const Offset(0, -0.3),
                      ),
                ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (int i = 0; i < LinkRepo.bottomLinks.length; i++)
                Expanded(
                  child: LinkWidget(LinkRepo.bottomLinks[i])
                      .animate(delay: 500.ms)
                      .fadeIn(delay: 500.ms, duration: 1000.ms)
                      .then()
                      .slide(
                        duration: 800.ms,
                        begin: const Offset(0, 0.0),
                        end: i == 0 || i == LinkRepo.bottomLinks.length - 1
                            ? const Offset(0, 0.3)
                            : const Offset(0, -0.3),
                      ),
                ),
            ],
          ),
          const SizedBox(height: 40),
          const Center(
            child: DescriptionWidget(),
          ),
          const SizedBox(height: 40),
          ...LinkRepo.newItems
              .map((link) => NewLinkWidget(link: link))
              .toList(),
          const SizedBox(height: 40),
        ],
      ).animate(delay: 1000.ms).slide(
            duration: 500.ms,
            begin: const Offset(0, 0.3),
            end: const Offset(0, 0),
          ),
    );
  }
}

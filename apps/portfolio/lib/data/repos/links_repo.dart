import 'models/links.dart';

class LinkRepo {
  static List<Link> get topLinks => <Link>[
        Link(
          title: 'Instagram',
          url: 'https://www.instagram.com/iajaykumar_14',
        ),
        Link(
          title: 'Youtube',
          url: 'https://www.youtube.com/channel/UCyV2fy32RyPgOco83tMkR-g',
        ),
        Link(
          title: 'Github',
          url: 'https://github.com/projectaj14',
        ),
      ];

  static List<Link> get bottomLinks => <Link>[
        Link(
          title: 'Stackoverflow',
          url: 'https://stackoverflow.com/users/2868455/ajay-kumar',
        ),
        Link(
          title: 'Twitter',
          url: 'https://twitter.com/AjayK_14',
        ),
        Link(
          title: 'LinkedIn',
          url: 'https://www.linkedin.com/in/ajaykumar2114/',
        ),
        Link(
          title: 'Medium',
          url: 'https://medium.com/@ajay.kumar_14',
        ),
      ];
}

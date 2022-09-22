import 'models/links.dart';

class LinkRepo {
  final _links = <Link>[
    Link(
      title: 'Youtube',
      image: 'assets/images/youtube.png',
      url: 'https://www.youtube.com/channel/UCyV2fy32RyPgOco83tMkR-g',
    ),
    Link(
      title: 'Instagram',
      image: 'assets/images/instagram.png',
      url: 'https://www.instagram.com/projectaj14',
    ),
    Link(
      title: 'Github',
      image: 'assets/images/github.png',
      url: 'https://github.com/ajaykumargithub2114',
    ),
    Link(
      title: 'Stackoverflow',
      image: 'assets/images/stackoverflow.png',
      url: 'https://stackoverflow.com/users/2868455/ajay-kumar',
    ),
    Link(
      title: 'Twitter',
      image: 'assets/images/twitter.png',
      url: 'https://twitter.com/AjayK_14',
    ),
    Link(
      title: 'LinkedIn',
      image: 'assets/images/linkedin.png',
      url: 'https://www.linkedin.com/in/ajay-kumar-586b7a22a/',
    ),
    Link(
      title: 'Medium',
      image: 'assets/images/medium.png',
      url: 'https://medium.com/@ajay.kumar_12671',
    ),
  ];

  List<Link> get links => _links;

  Future<List<Link>> getLinks() async {
    return _links;
  }

  Future<void> addLink(Link link) async {
    _links.add(link);
  }
}

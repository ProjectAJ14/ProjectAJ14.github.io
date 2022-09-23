import 'models/links.dart';

class LinkRepo {
  final _links = <Link>[
    Link(
      title: 'Youtube',
      url: 'https://www.youtube.com/channel/UCyV2fy32RyPgOco83tMkR-g',
    ),
    Link(
      title: 'Instagram',
      url: 'https://www.instagram.com/projectaj14',
    ),
    Link(
      title: 'Github',
      url: 'https://github.com/projectaj14',
    ),
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
      url: 'https://www.linkedin.com/in/ajay-kumar-586b7a22a/',
    ),
    Link(
      title: 'Medium',
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

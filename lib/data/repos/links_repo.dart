import 'models/links.dart';

class LinkRepo {
  final _links = <Link>[
    Link(
      title: 'New YT Video : Global Selection | Scribble | Flutter 3.3',
      url: 'https://youtu.be/ckx90v7I_18',
    ),
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
      url: 'https://github.com/ajaykumargithub2114',
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
  ];

  List<Link> get links => _links;

  Future<List<Link>> getLinks() async {
    return _links;
  }

  Future<void> addLink(Link link) async {
    _links.add(link);
  }
}

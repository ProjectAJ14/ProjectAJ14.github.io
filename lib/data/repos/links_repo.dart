import 'models/links.dart';

class LinkRepo {
  static List<Link> get topLinks => <Link>[
        Link(
          title: 'Instagram',
          url: 'https://www.instagram.com/projectaj14',
        ),
        Link(
          title: 'Youtube',
          url: 'https://www.youtube.com/@projectaj',
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

  static List<Link> get newItems => <Link>[
        Link(
          title: 'Global Selection | Scribble | Flutter 3.3',
          url: 'https://youtu.be/ckx90v7I_18',
          image: 'https://i.ibb.co/ZG617z8/maxresdefault.jpg',
        ),
        Link(
          title: 'Passwordless authentication in #flutter and #firebase',
          url: 'https://youtu.be/JHTSgFl8VH0',
          image: 'https://i.ibb.co/FW4Sh6M/maxresdefault-1.jpg',
        ),
      ];
}

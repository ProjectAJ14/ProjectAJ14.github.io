import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio/data/repos/models/links.dart';

void main() {
//Test if Link has image
  test('Link has image', () {
    final link = Link(image: 'https://i.ibb.co/ZG617z8/maxresdefault.jpg');
    expect(link.image, 'https://i.ibb.co/ZG617z8/maxresdefault.jpg');
  });
}

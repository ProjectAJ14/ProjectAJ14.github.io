import 'package:flutter/material.dart';

class Link {
  String id;
  String title;
  String url;
  String description;
  Color? color;

  Link({
    this.id = '',
    this.title = '',
    this.url = '',
    this.description = '',
    this.color,
  });
}

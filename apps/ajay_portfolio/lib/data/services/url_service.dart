import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

///
class AppURlService {
  ///
  static void launchURL(
    String url, {
    bool isCaseSensitive = false,
    Function()? onError,
  }) {
    try {
      launchUrl(Uri.parse(url));
    } catch (e, s) {
      debugPrint('Error in launchURL $e $s');
      onError?.call();
    }
  }
}

import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

class VersionWidget extends StatelessWidget {
  const VersionWidget({super.key});

  Future<String> getVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.version;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
        future: getVersion(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return SizedBox.shrink();
          }

          return Text(
            'Version ${snapshot.data}',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          );
        });
  }
}

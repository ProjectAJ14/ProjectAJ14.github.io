import 'package:flutter/material.dart';

class BoxWidget extends StatelessWidget {
  const BoxWidget({
    Key? key,
    required this.child,
    this.color,
    this.width,
  }) : super(key: key);

  final Widget child;
  final Color? color;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: color ?? Colors.white,
          width: width ?? 0.5,
        ),
      ),
      child: child,
    );
  }
}

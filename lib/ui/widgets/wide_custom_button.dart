
import 'package:flutter/material.dart';


class WideCustomButton extends StatelessWidget {
  const WideCustomButton({
    Key? key,
    required this.title,
    this.onTap,
  }) : super(key: key);
  final String title;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: .8,
      child: ElevatedButton(
          onPressed: onTap, child: Text(title)),
    );
  }
}

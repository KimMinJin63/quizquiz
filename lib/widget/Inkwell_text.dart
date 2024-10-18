import 'package:flutter/material.dart';

class InkWellText extends StatelessWidget {
  const InkWellText({super.key, this.onTap, required this.text});
  final Function()? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(text),
    );
  }
}

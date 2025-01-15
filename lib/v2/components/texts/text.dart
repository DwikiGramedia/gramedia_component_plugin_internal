import 'package:flutter/material.dart';

class SmartlibText extends StatelessWidget {
  final String data;
  final TextStyle style;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final Color? color;

  const SmartlibText(
    this.data, {
    super.key,
    required this.style,
    this.overflow,
    this.textAlign = TextAlign.center,
    this.maxLines = 1,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: style.copyWith(color: color),
      overflow: overflow ?? TextOverflow.ellipsis,
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }
}

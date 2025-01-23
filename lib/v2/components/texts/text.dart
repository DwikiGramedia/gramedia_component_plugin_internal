import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/v2/foundation/foundation.dart';

class PapyrusText extends StatelessWidget {
  final String data;
  final TextStyle style;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final Color? color;

  const PapyrusText(
    this.data, {
    super.key,
    required this.style,
    this.overflow,
    this.textAlign = TextAlign.left,
    this.maxLines = 1,
    this.color,
  });

  factory PapyrusText.bodyLExtraBold(String data) =>
      PapyrusText(data, style: PapyrusFont.bodyLExtraBold);
  factory PapyrusText.bodyMExtraBold(String data) =>
      PapyrusText(data, style: PapyrusFont.bodyMExtraBold);
  factory PapyrusText.bodySExtraBold(String data) =>
      PapyrusText(data, style: PapyrusFont.bodySExtraBold);
  factory PapyrusText.bodyXSExtraBold(String data) =>
      PapyrusText(data, style: PapyrusFont.bodyXSExtraBold);
  factory PapyrusText.body2XSExtraBold(String data) =>
      PapyrusText(data, style: PapyrusFont.body2XSExtraBold);

  factory PapyrusText.bodyLMedium(String data) =>
      PapyrusText(data, style: PapyrusFont.bodyLMedium);
  factory PapyrusText.bodyMMedium(String data) =>
      PapyrusText(data, style: PapyrusFont.bodyMMedium);
  factory PapyrusText.bodySMedium(String data) =>
      PapyrusText(data, style: PapyrusFont.bodySMedium);
  factory PapyrusText.bodyXSMedium(String data) =>
      PapyrusText(data, style: PapyrusFont.bodyXSMedium);
  factory PapyrusText.body2XSMedium(String data) =>
      PapyrusText(data, style: PapyrusFont.body2XSMedium);

  factory PapyrusText.bodyLSemiboldUnderline(String data) =>
      PapyrusText(data, style: PapyrusFont.bodyLSemiboldUnderline);
  factory PapyrusText.bodyMSemiboldUnderline(String data) =>
      PapyrusText(data, style: PapyrusFont.bodyMSemiboldUnderline);
  factory PapyrusText.bodySSemiboldUnderline(String data) =>
      PapyrusText(data, style: PapyrusFont.bodySSemiboldUnderline);
  factory PapyrusText.bodyXSSemiboldUnderline(String data) =>
      PapyrusText(data, style: PapyrusFont.bodyXSSemiboldUnderline);
  factory PapyrusText.body2XSSemiboldUnderline(String data) =>
      PapyrusText(data, style: PapyrusFont.body2XSSemiboldUnderline);

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

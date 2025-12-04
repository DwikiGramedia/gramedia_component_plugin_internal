import 'package:flutter/cupertino.dart';
import 'package:papilus_component_gramedia/v2/components/components.dart';
import 'package:papilus_component_gramedia/v2/foundation/foundation.dart';

class PapyrusLabel extends StatelessWidget {
  final Color foregroundColor;
  final Color backgroundColor;
  final String message;
  const PapyrusLabel({
    super.key,
    required this.message,
    required this.backgroundColor,
    required this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: .circular(PapyrusRadius.rXS),
      ),
      padding: const .symmetric(horizontal: 4, vertical: 2),
      child: PapyrusText(
        message,
        style: PapyrusFont.body2XSMedium.copyWith(color: foregroundColor),
      ),
    );
  }
}

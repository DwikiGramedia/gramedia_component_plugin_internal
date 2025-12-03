import 'package:flutter/material.dart';

import '../../foundation/foundation.dart';

class PapyrusProgressIndicator extends StatelessWidget {
  const PapyrusProgressIndicator({
    super.key,
    this.width,
    this.height,
    this.value,
  });

  final double? width;
  final double? height;
  final double? value;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width ?? 48,
        height: height ?? 48,
        child: value == null
            ? CircularProgressIndicator(
                color: PapyrusColors.neutral500.withAlpha(128),
                strokeWidth: 5,
              )
            : CircularProgressIndicator(
                backgroundColor: PapyrusColors.neutral50.withAlpha(128),
                color: PapyrusColors.brand500,
                strokeWidth: 5,
                value: value,
              ),
      ),
    );
  }
}

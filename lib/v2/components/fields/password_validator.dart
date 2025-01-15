import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:papilus_component_gramedia/v2/foundation/foundation.dart';

import '../texts/text.dart';

class SLPasswordValidator extends HookWidget {
  const SLPasswordValidator({
    super.key,
    this.hasMinChar,
    this.hasNumberAndSymbol,
    this.hasUpperCase,
  });

  final bool? hasMinChar;
  final bool? hasUpperCase;
  final bool? hasNumberAndSymbol;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _PasswordValidatorItem(
          requirement: 'Minimum 8 karakter.',
          valid: hasMinChar,
        ),
        _PasswordValidatorItem(
          requirement: 'Sertakan huruf kapital.',
          valid: hasUpperCase,
        ),
        _PasswordValidatorItem(
          requirement: 'Sertakan angka & simbol.',
          valid: hasNumberAndSymbol,
        ),
      ],
    );
  }
}

class _PasswordValidatorItem extends StatelessWidget {
  const _PasswordValidatorItem({
    Key? key,
    required this.requirement,
    this.valid,
  }) : super(key: key);

  final String requirement;
  final bool? valid;

  Color get color {
    switch (valid) {
      case null:
        return SmartlibColors.neutral500;
      case true:
        return SmartlibColors.green500;
      case false:
        return SmartlibColors.red500;
    }
  }

  IconData get iconData {
    switch (valid) {
      case null:
      case true:
        return FluentIcons.checkmark_12_regular;
      case false:
        return FluentIcons.dismiss_12_regular;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(iconData, color: color),
        const SizedBox(width: 8),
        SmartlibText(
          requirement,
          style: SmartlibFont.bodySMedium,
          maxLines: 2,
          color: color,
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/v2/components/components.dart';
import 'package:papilus_component_gramedia/v2/foundation/foundation.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Default', type: SmartlibButton)
Widget buildButton(BuildContext context) {
  return SmartlibScaffold(
    appBar: const SmartlibAppBar(
      title: 'Smartlib Button',
      leadingColor: SmartlibColors.accent50,
      centerTitle: true,
    ),
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: SmartlibSpacing.s16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SmartlibButton(
            label: 'Daftars',
            isLoading: false,
            onTap: () {},
          ),
          const SizedBox(height: SmartlibSpacing.s16),
          SmartlibButton.white(
            label: 'Daftar',
            isLoading: false,
            onTap: () {},
          ),
          const SizedBox(height: SmartlibSpacing.s16),
          SmartlibButton(
            label: 'Daftar',
            isLoading: true,
            onTap: () {},
          ),
          const SizedBox(height: SmartlibSpacing.s16),
          SmartlibButton.white(
            label: 'Daftar',
            isLoading: true,
            onTap: () {},
          ),
        ],
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/v2/components/components.dart';
import 'package:papilus_component_gramedia/v2/foundation/foundation.dart';
import 'package:widgetbook/widgetbook.dart';
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
      child: ListView(
        padding: const EdgeInsets.only(top: SmartlibSpacing.s16),
        shrinkWrap: true,
        children: [
          // Active Button
          SmartlibText(
            'Active Button',
            style: SmartlibFont.h6,
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: SmartlibSpacing.s8),
          SmartlibButton(
            label: context.knobs.string(
              label: 'Active Button Primary',
              initialValue: 'Primary Button',
            ),
            isLoading: false,
            onTap: () {},
          ),
          const SizedBox(height: SmartlibSpacing.s4),
          SmartlibButton.secondary(
            label: context.knobs.string(
              label: 'Active Button Secondary',
              initialValue: 'Secondary Button',
            ),
            isLoading: false,
            onTap: () {},
          ),
          const SizedBox(height: SmartlibSpacing.s4),
          SmartlibButton.tertiery(
            label: context.knobs.string(
              label: 'Active Button Tertiery',
              initialValue: 'Tertiery Button',
            ),
            isLoading: false,
            onTap: () {},
          ),
          const SizedBox(height: SmartlibSpacing.s16),
          // Disabled Button
          SmartlibText(
            'Disabled Button',
            style: SmartlibFont.h6,
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: SmartlibSpacing.s8),
          SmartlibButton(
            label: context.knobs.string(
              label: 'Disabled Button Primary',
              initialValue: 'Primary Button',
            ),
            isLoading: false,
            onTap: null,
          ),
          const SizedBox(height: SmartlibSpacing.s4),
          SmartlibButton.secondary(
            label: context.knobs.string(
              label: 'Disabled Button Secondary',
              initialValue: 'Secondary Button',
            ),
            isLoading: false,
            onTap: null,
          ),
          const SizedBox(height: SmartlibSpacing.s4),
          SmartlibButton.tertiery(
            label: context.knobs.string(
              label: 'Disabled Button Tertiery',
              initialValue: 'Tertiery Button',
            ),
            isLoading: false,
            onTap: null,
          ),
          const SizedBox(height: SmartlibSpacing.s16),
          // Loading Button
          SmartlibText(
            'Loading Button',
            style: SmartlibFont.h6,
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: SmartlibSpacing.s8),
          SmartlibButton(
            label: context.knobs.string(
              label: 'Disabled Button Primary',
              initialValue: 'Primary Button',
            ),
            isLoading: true,
            onTap: () {},
          ),
          const SizedBox(height: SmartlibSpacing.s4),
          SmartlibButton.secondary(
            label: context.knobs.string(
              label: 'Disabled Button Secondary',
              initialValue: 'Secondary Button',
            ),
            isLoading: true,
            onTap: () {},
          ),
          const SizedBox(height: SmartlibSpacing.s4),
          SmartlibButton.tertiery(
            label: context.knobs.string(
              label: 'Disabled Button Tertiery',
              initialValue: 'Tertiery Button',
            ),
            isLoading: true,
            onTap: () {},
          ),
        ],
      ),
    ),
  );
}

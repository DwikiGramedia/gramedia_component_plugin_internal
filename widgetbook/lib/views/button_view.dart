import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/v2/components/components.dart';
import 'package:papilus_component_gramedia/v2/foundation/foundation.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Default', type: PapyrusButton)
Widget buildButton(BuildContext context) {
  return PapyrusScaffold(
    appBar: const PapyrusAppBar(
      title: 'Papyrus Button',
      leadingColor: PapyrusColors.accent50,
      centerTitle: true,
    ),
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: PapyrusSpacing.s16),
      child: ListView(
        padding: const EdgeInsets.only(top: PapyrusSpacing.s16),
        shrinkWrap: true,
        children: [
          // Active Button
          PapyrusText(
            'Active Button',
            style: PapyrusFont.h6,
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: PapyrusSpacing.s8),
          PapyrusButton(
            label: context.knobs.string(
              label: 'Active Button Primary',
              initialValue: 'Primary Button',
            ),
            isLoading: false,
            onTap: () {},
          ),
          const SizedBox(height: PapyrusSpacing.s4),
          PapyrusButton.secondary(
            label: context.knobs.string(
              label: 'Active Button Secondary',
              initialValue: 'Secondary Button',
            ),
            isLoading: false,
            onTap: () {},
          ),
          const SizedBox(height: PapyrusSpacing.s4),
          PapyrusButton.tertiery(
            label: context.knobs.string(
              label: 'Active Button Tertiery',
              initialValue: 'Tertiery Button',
            ),
            isLoading: false,
            onTap: () {},
          ),
          const SizedBox(height: PapyrusSpacing.s16),
          // Disabled Button
          PapyrusText(
            'Disabled Button',
            style: PapyrusFont.h6,
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: PapyrusSpacing.s8),
          PapyrusButton(
            label: context.knobs.string(
              label: 'Disabled Button Primary',
              initialValue: 'Primary Button',
            ),
            isLoading: false,
            onTap: null,
          ),
          const SizedBox(height: PapyrusSpacing.s4),
          PapyrusButton.secondary(
            label: context.knobs.string(
              label: 'Disabled Button Secondary',
              initialValue: 'Secondary Button',
            ),
            isLoading: false,
            onTap: null,
          ),
          const SizedBox(height: PapyrusSpacing.s4),
          PapyrusButton.tertiery(
            label: context.knobs.string(
              label: 'Disabled Button Tertiery',
              initialValue: 'Tertiery Button',
            ),
            isLoading: false,
            onTap: null,
          ),
          const SizedBox(height: PapyrusSpacing.s16),
          // Loading Button
          PapyrusText(
            'Loading Button',
            style: PapyrusFont.h6,
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: PapyrusSpacing.s8),
          PapyrusButton(
            label: '',
            isLoading: true,
            onTap: () {},
          ),
          const SizedBox(height: PapyrusSpacing.s4),
          PapyrusButton.secondary(
            label: '',
            isLoading: true,
            onTap: () {},
          ),
          const SizedBox(height: PapyrusSpacing.s4),
          PapyrusButton.tertiery(
            label: '',
            isLoading: true,
            onTap: () {},
          ),
        ],
      ),
    ),
  );
}

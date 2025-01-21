import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/v2/components/components.dart';
import 'package:papilus_component_gramedia/v2/foundation/foundation.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Default', type: PapyrusIconButton)
Widget buildButton(BuildContext context) {
  return PapyrusScaffold(
    appBar: const PapyrusAppBar(
      title: 'Papyrus Icon Button',
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
          PapyrusIconButton(
            label: context.knobs.string(
              label: 'Active Button Primary',
              initialValue: 'Primary Button',
            ),
            icon: Icons.add,
            isLoading: false,
            onTap: () {},
          ),
          const SizedBox(height: PapyrusSpacing.s4),
          PapyrusIconButton.secondary(
            label: context.knobs.string(
              label: 'Active Button Secondary',
              initialValue: 'Secondary Button',
            ),
            icon: Icons.add,
            isLoading: false,
            onTap: () {},
          ),
          const SizedBox(height: PapyrusSpacing.s4),
          PapyrusIconButton.tertiery(
            label: context.knobs.string(
              label: 'Active Button Tertiery',
              initialValue: 'Tertiery Button',
            ),
            icon: Icons.add,
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
          PapyrusIconButton(
            label: context.knobs.string(
              label: 'Disable Button Primary',
              initialValue: 'Primary Button',
            ),
            icon: Icons.add,
            isLoading: false,
            onTap: null,
          ),
          const SizedBox(height: PapyrusSpacing.s4),
          PapyrusIconButton.secondary(
            label: context.knobs.string(
              label: 'Disable Button Secondary',
              initialValue: 'Secondary Button',
            ),
            icon: Icons.add,
            isLoading: false,
            onTap: null,
          ),
          const SizedBox(height: PapyrusSpacing.s4),
          PapyrusIconButton.tertiery(
            label: context.knobs.string(
              label: 'Disable Button Tertiery',
              initialValue: 'Tertiery Button',
            ),
            icon: Icons.add,
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
          PapyrusIconButton(
            label: '',
            icon: Icons.add,
            isLoading: true,
            onTap: () {},
          ),
          const SizedBox(height: PapyrusSpacing.s4),
          PapyrusIconButton.secondary(
            label: '',
            icon: Icons.add,
            isLoading: true,
            onTap: () {},
          ),
          const SizedBox(height: PapyrusSpacing.s4),
          PapyrusIconButton.tertiery(
            label: '',
            icon: Icons.add,
            isLoading: true,
            onTap: () {},
          ),
        ],
      ),
    ),
  );
}

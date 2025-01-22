import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/v2/components/components.dart';
import 'package:papilus_component_gramedia/v2/foundation/foundation.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Default', type: PapyrusIconButton)
Widget buildButton(BuildContext context) {
  IconData getIconsList() => context.knobs.list(
        label: 'Icons',
        options: [
          Icons.add,
          Icons.menu,
          Icons.chevron_right_outlined,
        ],
      );

  double getButtonSize() => context.knobs.int
      .slider(label: 'Button Size', max: 100, min: 50, initialValue: 50)
      .toDouble();

  double getIconSize() => context.knobs.int
      .slider(label: 'Icon Size', max: 40, min: 5, initialValue: 20)
      .toDouble();

  return PapyrusScaffold(
    appBar: const PapyrusAppBar(
      title: 'Papyrus Icon Button',
      leadingColor: PapyrusColors.accent50,
      centerTitle: true,
    ),
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: PapyrusSpacing.s16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: PapyrusSpacing.s16),
          // Active Button
          PapyrusText(
            'Active Button',
            style: PapyrusFont.h6,
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: PapyrusSpacing.s16),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              PapyrusIconButton(
                icon: getIconsList(),
                isLoading: false,
                iconSize: getIconSize(),
                width: getButtonSize(),
                height: getButtonSize(),
                onTap: () {},
              ),
              const SizedBox(width: PapyrusSpacing.s16),
              PapyrusIconButton.secondary(
                icon: getIconsList(),
                iconSize: getIconSize(),
                isLoading: false,
                width: getButtonSize(),
                height: getButtonSize(),
                onTap: () {},
              ),
              const SizedBox(width: PapyrusSpacing.s16),
              PapyrusIconButton.tertiery(
                icon: getIconsList(),
                iconSize: getIconSize(),
                width: getButtonSize(),
                height: getButtonSize(),
                onTap: () {},
              ),
            ],
          ),
          const SizedBox(height: PapyrusSpacing.s16),
          // Disabled Button
          PapyrusText(
            'Disabled Button',
            style: PapyrusFont.h6,
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: PapyrusSpacing.s16),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              PapyrusIconButton(
                icon: getIconsList(),
                isLoading: false,
                iconSize: getIconSize(),
                width: getButtonSize(),
                height: getButtonSize(),
                isDisabled: true,
                onTap: () {},
              ),
              const SizedBox(width: PapyrusSpacing.s16),
              PapyrusIconButton.secondary(
                icon: getIconsList(),
                iconSize: getIconSize(),
                isLoading: false,
                width: getButtonSize(),
                height: getButtonSize(),
              ),
              const SizedBox(width: PapyrusSpacing.s16),
              PapyrusIconButton.tertiery(
                icon: getIconsList(),
                iconSize: getIconSize(),
                width: getButtonSize(),
                height: getButtonSize(),
                isDisabled: true,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

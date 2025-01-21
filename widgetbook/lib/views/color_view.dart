import 'package:flutter/widgets.dart';
import 'package:papilus_component_gramedia/v2/components/components.dart';
import 'package:papilus_component_gramedia/v2/foundation/foundation.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook_workspace/widgets/color_card.dart';
import 'package:widgetbook_workspace/widgets/color_tile.dart';

@widgetbook.UseCase(name: 'Default', type: PapyrusColors)
Widget buildButton(BuildContext context) {
  return PapyrusScaffold(
    appBar: const PapyrusAppBar(
      title: 'Papyrus Colors',
      centerTitle: true,
    ),
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: PapyrusSpacing.s16),
      child: ListView(
        children: const [
          ColorCard(title: 'Neutral Colors', children: neutralColors),
          ColorCard(title: 'Brand Colors', children: brandColors),
          ColorCard(title: 'Accent Colors', children: accentColors),
          ColorCard(title: 'Green Colors', children: greenColors),
          ColorCard(title: 'Yellow Colors', children: yellowColors),
          ColorCard(title: 'Red Colors', children: redColors),
        ],
      ),
    ),
  );
}

const neutralColors = [
  ColorTile(color: PapyrusColors.white, colorName: 'White'),
  ColorTile(
    color: PapyrusColors.neutral500,
    colorName: 'Neutral/500',
    darkText: false,
  ),
  ColorTile(color: PapyrusColors.neutral50, colorName: 'Neutral/50'),
  ColorTile(
    color: PapyrusColors.neutral600,
    colorName: 'Neutral/600',
    darkText: false,
  ),
  ColorTile(color: PapyrusColors.neutral150, colorName: 'Neutral/150'),
  ColorTile(
    color: PapyrusColors.neutral700,
    colorName: 'Neutral/700',
    darkText: false,
  ),
  ColorTile(color: PapyrusColors.neutral200, colorName: 'Neutral/200'),
];

const brandColors = [
  ColorTile(color: PapyrusColors.brand50, colorName: 'Brand/50'),
  ColorTile(
    color: PapyrusColors.brand500,
    colorName: 'Brand/500',
    darkText: false,
  ),
  ColorTile(color: PapyrusColors.brand200, colorName: 'Brand/200'),
  ColorTile(
    color: PapyrusColors.brand600,
    colorName: 'Brand/600',
    darkText: false,
  ),
  SizedBox(),
  ColorTile(
    color: PapyrusColors.brand700,
    colorName: 'Brand/700',
    darkText: false,
  ),
];

const accentColors = [
  ColorTile(color: PapyrusColors.accent50, colorName: 'Accent/50'),
  ColorTile(
    color: PapyrusColors.accent500,
    colorName: 'Accent/500',
    darkText: false,
  ),
  SizedBox(),
  ColorTile(
    color: PapyrusColors.accent600,
    colorName: 'Accent/600',
    darkText: false,
  ),
  SizedBox(),
  ColorTile(
    color: PapyrusColors.accent700,
    colorName: 'Accent/700',
    darkText: false,
  ),
];

const greenColors = [
  ColorTile(color: PapyrusColors.green50, colorName: 'Green/50'),
  ColorTile(
    color: PapyrusColors.green500,
    colorName: 'Green/500',
    darkText: false,
  ),
  SizedBox(),
  ColorTile(
    color: PapyrusColors.green600,
    colorName: 'Green/600',
    darkText: false,
  ),
  SizedBox(),
  ColorTile(
    color: PapyrusColors.green700,
    colorName: 'Green/700',
    darkText: false,
  ),
];

const yellowColors = [
  ColorTile(color: PapyrusColors.yellow50, colorName: 'Yellow/50'),
  ColorTile(
    color: PapyrusColors.yellow500,
    colorName: 'Yellow/500',
    darkText: false,
  ),
  SizedBox(),
  ColorTile(
    color: PapyrusColors.yellow600,
    colorName: 'Yellow/600',
    darkText: false,
  ),
  SizedBox(),
  ColorTile(
    color: PapyrusColors.yellow700,
    colorName: 'Yellow/700',
    darkText: false,
  ),
];

const redColors = [
  ColorTile(color: PapyrusColors.red50, colorName: 'Red/50'),
  ColorTile(
    color: PapyrusColors.red500,
    colorName: 'Red/500',
    darkText: false,
  ),
  SizedBox(),
  ColorTile(
    color: PapyrusColors.red600,
    colorName: 'Red/600',
    darkText: false,
  ),
  SizedBox(),
  ColorTile(
    color: PapyrusColors.red700,
    colorName: 'Red/700',
    darkText: false,
  ),
];

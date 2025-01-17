import 'package:flutter/widgets.dart';
import 'package:papilus_component_gramedia/v2/components/components.dart';
import 'package:papilus_component_gramedia/v2/foundation/foundation.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook_workspace/widgets/color_card.dart';
import 'package:widgetbook_workspace/widgets/color_tile.dart';

@widgetbook.UseCase(name: 'Default', type: SmartlibColors)
Widget buildButton(BuildContext context) {
  return SmartlibScaffold(
    appBar: const SmartlibAppBar(
      title: 'Smartlib Colors',
      centerTitle: true,
    ),
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: SmartlibSpacing.s16),
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
  ColorTile(color: SmartlibColors.white, colorName: 'White'),
  ColorTile(
    color: SmartlibColors.neutral500,
    colorName: 'Neutral/500',
    darkText: false,
  ),
  ColorTile(color: SmartlibColors.neutral50, colorName: 'Neutral/50'),
  ColorTile(
    color: SmartlibColors.neutral600,
    colorName: 'Neutral/600',
    darkText: false,
  ),
  ColorTile(color: SmartlibColors.neutral150, colorName: 'Neutral/150'),
  ColorTile(
    color: SmartlibColors.neutral700,
    colorName: 'Neutral/700',
    darkText: false,
  ),
  ColorTile(color: SmartlibColors.neutral200, colorName: 'Neutral/200'),
];

const brandColors = [
  ColorTile(color: SmartlibColors.brand50, colorName: 'Brand/50'),
  ColorTile(
    color: SmartlibColors.brand500,
    colorName: 'Brand/500',
    darkText: false,
  ),
  ColorTile(color: SmartlibColors.brand200, colorName: 'Brand/200'),
  ColorTile(
    color: SmartlibColors.brand600,
    colorName: 'Brand/600',
    darkText: false,
  ),
  SizedBox(),
  ColorTile(
    color: SmartlibColors.brand700,
    colorName: 'Brand/700',
    darkText: false,
  ),
];

const accentColors = [
  ColorTile(color: SmartlibColors.accent50, colorName: 'Accent/50'),
  ColorTile(
    color: SmartlibColors.accent500,
    colorName: 'Accent/500',
    darkText: false,
  ),
  SizedBox(),
  ColorTile(
    color: SmartlibColors.accent600,
    colorName: 'Accent/600',
    darkText: false,
  ),
  SizedBox(),
  ColorTile(
    color: SmartlibColors.accent700,
    colorName: 'Accent/700',
    darkText: false,
  ),
];

const greenColors = [
  ColorTile(color: SmartlibColors.green50, colorName: 'Green/50'),
  ColorTile(
    color: SmartlibColors.green500,
    colorName: 'Green/500',
    darkText: false,
  ),
  SizedBox(),
  ColorTile(
    color: SmartlibColors.green600,
    colorName: 'Green/600',
    darkText: false,
  ),
  SizedBox(),
  ColorTile(
    color: SmartlibColors.green700,
    colorName: 'Green/700',
    darkText: false,
  ),
];

const yellowColors = [
  ColorTile(color: SmartlibColors.yellow50, colorName: 'Yellow/50'),
  ColorTile(
    color: SmartlibColors.yellow500,
    colorName: 'Yellow/500',
    darkText: false,
  ),
  SizedBox(),
  ColorTile(
    color: SmartlibColors.yellow600,
    colorName: 'Yellow/600',
    darkText: false,
  ),
  SizedBox(),
  ColorTile(
    color: SmartlibColors.yellow700,
    colorName: 'Yellow/700',
    darkText: false,
  ),
];

const redColors = [
  ColorTile(color: SmartlibColors.red50, colorName: 'Red/50'),
  ColorTile(
    color: SmartlibColors.red500,
    colorName: 'Red/500',
    darkText: false,
  ),
  SizedBox(),
  ColorTile(
    color: SmartlibColors.red600,
    colorName: 'Red/600',
    darkText: false,
  ),
  SizedBox(),
  ColorTile(
    color: SmartlibColors.red700,
    colorName: 'Red/700',
    darkText: false,
  ),
];

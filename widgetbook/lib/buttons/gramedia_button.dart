import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';
import 'package:papilus_component_gramedia/v2/components/components.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Default', type: GramediaButton)
Widget buildGramediaButtonUseCase(BuildContext context) {
  return SmartlibButton(
    label: 'Daftar',
    isLoading: false,
    onTap: () {},
  );
}

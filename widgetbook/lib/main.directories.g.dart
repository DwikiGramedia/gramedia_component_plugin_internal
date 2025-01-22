// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:widgetbook/widgetbook.dart' as _i1;
import 'package:widgetbook_workspace/views/button_view.dart' as _i2;
import 'package:widgetbook_workspace/views/color_view.dart' as _i6;
import 'package:widgetbook_workspace/views/icon_button_view.dart' as _i3;
import 'package:widgetbook_workspace/views/snackbar_view.dart' as _i5;
import 'package:widgetbook_workspace/views/text_field_view.dart' as _i4;
import 'package:widgetbook_workspace/views/typography_view.dart' as _i7;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'v2',
    children: [
      _i1.WidgetbookFolder(
        name: 'components',
        children: [
          _i1.WidgetbookFolder(
            name: 'buttons',
            children: [
              _i1.WidgetbookLeafComponent(
                name: 'PapyrusButton',
                useCase: _i1.WidgetbookUseCase(
                  name: 'Default',
                  builder: _i2.buildButton,
                ),
              ),
              _i1.WidgetbookLeafComponent(
                name: 'PapyrusIconButton',
                useCase: _i1.WidgetbookUseCase(
                  name: 'Default',
                  builder: _i3.buildButton,
                ),
              ),
            ],
          ),
          _i1.WidgetbookFolder(
            name: 'fields',
            children: [
              _i1.WidgetbookLeafComponent(
                name: 'PapyrusTextField',
                useCase: _i1.WidgetbookUseCase(
                  name: 'Default',
                  builder: _i4.buildButton,
                ),
              )
            ],
          ),
          _i1.WidgetbookFolder(
            name: 'snackbars',
            children: [
              _i1.WidgetbookLeafComponent(
                name: 'PapyrusSnackbar',
                useCase: _i1.WidgetbookUseCase(
                  name: 'Default',
                  builder: _i5.buildButton,
                ),
              )
            ],
          ),
        ],
      ),
      _i1.WidgetbookFolder(
        name: 'foundation',
        children: [
          _i1.WidgetbookLeafComponent(
            name: 'PapyrusColors',
            useCase: _i1.WidgetbookUseCase(
              name: 'Default',
              builder: _i6.buildButton,
            ),
          ),
          _i1.WidgetbookLeafComponent(
            name: 'PapyrusFont',
            useCase: _i1.WidgetbookUseCase(
              name: 'Default',
              builder: _i7.buildPapyrusFont,
            ),
          ),
        ],
      ),
    ],
  )
];

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:widgetbook/widgetbook.dart' as _i1;
import 'package:widgetbook_workspace/views/color_view.dart' as _i3;
import 'package:widgetbook_workspace/views/gramedia_button_view.dart' as _i2;

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
                name: 'SmartlibButton',
                useCase: _i1.WidgetbookUseCase(
                  name: 'Default',
                  builder: _i2.buildButton,
                ),
              )
            ],
          )
        ],
      ),
      _i1.WidgetbookFolder(
        name: 'foundation',
        children: [
          _i1.WidgetbookLeafComponent(
            name: 'SmartlibColors',
            useCase: _i1.WidgetbookUseCase(
              name: 'Colors',
              builder: _i3.buildButton,
            ),
          )
        ],
      ),
    ],
  )
];

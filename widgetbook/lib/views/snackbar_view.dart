import 'package:flutter/widgets.dart';
import 'package:papilus_component_gramedia/v2/components/components.dart';
import 'package:papilus_component_gramedia/v2/components/snackbars/snackbars.dart';
import 'package:papilus_component_gramedia/v2/foundation/foundation.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Default', type: PapyrusSnackbar)
Widget buildButton(BuildContext context) {
  return PapyrusScaffold(
    appBar: const PapyrusAppBar(
      title: 'Papyrus Colors',
      centerTitle: true,
    ),
    body: Padding(
      padding: const EdgeInsets.fromLTRB(
        PapyrusSpacing.s16,
        PapyrusSpacing.s16,
        PapyrusSpacing.s16,
        0,
      ),
      child: ListView(
        children: [
          PapyrusButton(
            label: 'Snackbar Without Button',
            onTap: () {
              PapyrusSnackbar().show(
                context,
                'Hello! Success showing snackbar.',
              );
            },
          ),
          const SizedBox(height: PapyrusSpacing.s16),
          PapyrusButton.secondary(
            label: 'Snackbar With Button',
            onTap: () {
              PapyrusSnackbar().show(
                context,
                'Hello! Success showing snackbar.',
                buttonMessage: 'Reload',
                onTapButton: () {},
              );
            },
          ),
        ],
      ),
    ),
  );
}

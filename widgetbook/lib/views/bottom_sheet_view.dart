import 'package:flutter/widgets.dart';
import 'package:papilus_component_gramedia/v2/components/components.dart';
import 'package:papilus_component_gramedia/v2/foundation/foundation.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Default', type: PapyrusBottomSheet)
Widget buildButton(BuildContext context) {
  return PapyrusScaffold(
    appBar: const PapyrusAppBar(
      title: 'Papyrus Bottom Sheet',
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
            label: 'Show Bottom Sheet',
            onTap: () async {
              var result = await const PapyrusBottomSheet(
                content: _BottomSheetContent(),
              ).show(context);

              PapyrusSnackbar().show(
                context,
                'Result from bottom sheet: $result',
              );
            },
          ),
          const SizedBox(height: PapyrusSpacing.s16),
          PapyrusButton.secondary(
            label: 'Show Bottom Sheet Not Dismissible',
            onTap: () async {
              var result = await const PapyrusBottomSheet(
                content: _BottomSheetContent(),
                isDismissible: false,
              ).show(context);

              PapyrusSnackbar().show(
                context,
                'Result from bottom sheet: $result',
              );
            },
          )
        ],
      ),
    ),
  );
}

class _BottomSheetContent extends StatelessWidget {
  const _BottomSheetContent();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(PapyrusSpacing.s16),
      child: Column(
        children: [
          PapyrusText.bodyLExtraBold(
            'This is the content of bottom sheet',
          ),
          const SizedBox(height: PapyrusSpacing.s16),
          PapyrusButton(
            label: 'Return True',
            onTap: () => Navigator.pop(context, true),
          ),
          const SizedBox(height: PapyrusSpacing.s16),
          PapyrusButton.secondary(
            label: 'Return False',
            onTap: () => Navigator.pop(context, false),
          ),
          const SizedBox(height: PapyrusSpacing.s16),
          PapyrusButton.tertiery(
            label: 'Return Null',
            onTap: () => Navigator.pop(context, null),
          ),
          const SizedBox(height: PapyrusSpacing.s16),
        ],
      ),
    );
  }
}

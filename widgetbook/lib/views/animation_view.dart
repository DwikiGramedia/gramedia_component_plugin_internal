import 'package:flutter/widgets.dart';
import 'package:papilus_component_gramedia/v2/components/components.dart';
import 'package:papilus_component_gramedia/v2/foundation/foundation.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Default', type: PapyrusDotIndicator)
Widget buildButton(BuildContext context) {
  return PapyrusScaffold(
    appBar: const PapyrusAppBar(
      title: 'Papyrus Animation',
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
          PapyrusText.bodyLExtraBold('Dot Indicator'),
          const SizedBox(height: PapyrusSpacing.s16),
          PapyrusDotIndicator(
            currentIndex: context.knobs.int.slider(
              label: 'Dot Indicator Index',
              max: 4,
              min: 0,
              initialValue: 2,
            ),
            length: 5,
            onChanged: (_) {},
          ),
          const SizedBox(height: PapyrusSpacing.s16),
          PapyrusText.bodyLExtraBold('Loading Indicator With Value'),
          const SizedBox(height: PapyrusSpacing.s16),
          PapyrusProgressIndicator(
            value: context.knobs.double.slider(
              label: 'Loading Indicator Progress',
              max: 1,
              min: 0,
              initialValue: 0.25,
            ),
          ),
          const SizedBox(height: PapyrusSpacing.s16),
          PapyrusText.bodyLExtraBold('Loading Indicator Without Value'),
          const SizedBox(height: PapyrusSpacing.s16),
          const PapyrusProgressIndicator(),
        ],
      ),
    ),
  );
}

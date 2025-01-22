import 'package:flutter/widgets.dart';
import 'package:papilus_component_gramedia/v2/components/components.dart';
import 'package:papilus_component_gramedia/v2/foundation/foundation.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Default', type: PapyrusFont)
Widget buildPapyrusFont(BuildContext context) {
  return PapyrusScaffold(
    appBar: const PapyrusAppBar(
      title: 'Papyrus Font',
      centerTitle: true,
    ),
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: PapyrusSpacing.s16),
      child: ListView(
        children: [
          PapyrusText('Heading 1', style: PapyrusFont.h1),
          PapyrusText('Heading 2', style: PapyrusFont.h2),
          PapyrusText('Heading 3', style: PapyrusFont.h3),
          PapyrusText('Heading 4', style: PapyrusFont.h4),
          PapyrusText('Heading 5', style: PapyrusFont.h5),
          PapyrusText('Heading 6', style: PapyrusFont.h6),
          PapyrusText(
            'Heading 6 Customized',
            style: PapyrusFont.h6,
            color: PapyrusColors.brand500,
            textAlign: TextAlign.center,
          ),
          PapyrusText(
            'Heading 6 Another Customized',
            style: PapyrusFont.h6.copyWith(
              decoration: TextDecoration.lineThrough,
            ),
            color: PapyrusColors.brand500,
            textAlign: TextAlign.right,
          ),
          const SizedBox(height: PapyrusSpacing.s32),
          PapyrusText('Body L Extrabold', style: PapyrusFont.bodyLExtraBold),
          PapyrusText(
            'Body L Medium',
            style: PapyrusFont.bodyLMedium,
          ),
          PapyrusText(
            'Body L Semibold/Underline',
            style: PapyrusFont.bodyLSemiboldUnderline,
          ),
          const SizedBox(height: PapyrusSpacing.s32),
          PapyrusText('Body M Extrabold', style: PapyrusFont.bodyMExtraBold),
          PapyrusText(
            'Body M Medium',
            style: PapyrusFont.bodyMMedium,
          ),
          PapyrusText(
            'Body M Semibold/Underline',
            style: PapyrusFont.bodyMSemiboldUnderline,
          ),
          const SizedBox(height: PapyrusSpacing.s32),
          PapyrusText('Body S Extrabold', style: PapyrusFont.bodySExtraBold),
          PapyrusText(
            'Body S Medium',
            style: PapyrusFont.bodySMedium,
          ),
          PapyrusText(
            'Body S Semibold/Underline',
            style: PapyrusFont.bodySSemiboldUnderline,
          ),
          const SizedBox(height: PapyrusSpacing.s32),
          PapyrusText('Body XS Extrabold', style: PapyrusFont.bodyXSExtraBold),
          PapyrusText(
            'Body XS Medium',
            style: PapyrusFont.bodyXSMedium,
          ),
          PapyrusText(
            'Body XS Semibold/Underline',
            style: PapyrusFont.bodyXSSemiboldUnderline,
          ),
          const SizedBox(height: PapyrusSpacing.s32),
          PapyrusText('Body 2XS Extrabold',
              style: PapyrusFont.body2XSExtraBold),
          PapyrusText(
            'Body 2XS Medium',
            style: PapyrusFont.body2XSMedium,
          ),
          PapyrusText(
            'Body 2XS Semibold/Underline',
            style: PapyrusFont.body2XSSemiboldUnderline,
          ),
        ],
      ),
    ),
  );
}

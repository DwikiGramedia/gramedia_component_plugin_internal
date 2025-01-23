import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/v2/foundation/colors.dart';
import 'package:papilus_component_gramedia/v2/foundation/radius.dart';

class PapyrusBottomSheet extends StatelessWidget {
  const PapyrusBottomSheet({
    super.key,
    required this.content,
    this.enableDrag = true,
    this.isDismissible = true,
  });

  final Widget content;
  final bool enableDrag;
  final bool isDismissible;

  Future<bool?> show(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return showModalBottomSheet(
      context: context,
      useSafeArea: true,
      enableDrag: isDismissible ? enableDrag : false,
      isDismissible: isDismissible,
      isScrollControlled: true,
      backgroundColor: PapyrusColors.white,
      constraints: BoxConstraints(
          maxWidth: mediaQuery.size.width > 600 ? 600 : mediaQuery.size.width,
          maxHeight: mediaQuery.size.height * 0.75),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(PapyrusRadius.rL),
        ),
      ),
      builder: (context) => this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 8, bottom: 20),
          decoration: const BoxDecoration(
            color: PapyrusColors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(PapyrusRadius.rL),
            ),
          ),
          child: Center(
            child: Container(
              height: 4,
              width: 32,
              decoration: BoxDecoration(
                  color: PapyrusColors.neutral200,
                  borderRadius: BorderRadius.circular(
                    PapyrusRadius.rInfinity,
                  ),
                  shape: BoxShape.rectangle),
            ),
          ),
        ),
        content,
      ],
    );
  }
}

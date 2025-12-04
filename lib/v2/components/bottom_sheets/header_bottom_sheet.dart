import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/v2/components/texts/text.dart';
import 'package:papilus_component_gramedia/v2/foundation/foundation.dart';

class HeaderBottomSheet extends StatelessWidget {
  final Function()? onTapClose;
  final Function()? onTapBack;
  final String title;
  const HeaderBottomSheet({
    this.onTapBack,
    this.onTapClose,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: .only(top: PapyrusSpacing.s12),
      color: PapyrusColors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Opacity(
            opacity: onTapBack != null ? 1.0 : 0.0,
            child: IconButton(
              onPressed: onTapBack,
              icon: Icon(Icons.arrow_back, color: Colors.black),
            ),
          ),
          const Spacer(),
          PapyrusText(
            title,
            style: PapyrusFont.bodyLExtraBold,
            textAlign: TextAlign.center,
          ),
          Spacer(),
          onTapClose != null
              ? IconButton(
                  onPressed: onTapClose,
                  icon: Icon(Icons.close, color: Colors.black),
                )
              : const SizedBox(width: 8),
        ],
      ),
    );
  }
}

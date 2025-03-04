import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:papilus_component_gramedia/v2/components/buttons/icon_button.dart';
import 'package:papilus_component_gramedia/v2/components/texts/text.dart';
import 'package:papilus_component_gramedia/v2/foundation/foundation.dart';

class PapyrusAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PapyrusAppBar({
    super.key,
    this.title = '',
    this.centerTitle = false,
    this.titleTextStyle,
    this.showLeading = true,
    this.leading,
    this.leadingColor,
    this.onLeadingPressed,
    this.actions,
    this.elevation = 0,
    this.systemOverlayStyle,
    this.bottom,
    this.titleSpacing,
  });

  final String title;
  final bool centerTitle;
  final TextStyle? titleTextStyle;
  final bool showLeading;
  final Widget? leading;
  final Color? leadingColor;
  final void Function()? onLeadingPressed;
  final List<Widget>? actions;
  final double elevation;
  final SystemUiOverlayStyle? systemOverlayStyle;
  final PreferredSizeWidget? bottom;
  final double? titleSpacing;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      forceMaterialTransparency: true,
      title: PapyrusText(
        title,
        style: PapyrusFont.bodyLExtraBold,
        maxLines: 2,
        textAlign: TextAlign.start,
      ),
      centerTitle: centerTitle,
      titleTextStyle: titleTextStyle,
      foregroundColor: PapyrusColors.neutral700,
      automaticallyImplyLeading: showLeading,
      leading: !showLeading
          ? PapyrusIconButton.tertiery(
              width: 25,
              height: 25,
              iconSize: 25,
              icon: FluentIcons.arrow_left_16_filled,
              onTap: () => Navigator.pop(context),
            )
          : leading,
      leadingWidth: 60,
      titleSpacing: titleSpacing,
      actions: actions,
      elevation: elevation,
      systemOverlayStyle: systemOverlayStyle ?? SystemUiOverlayStyle.dark,
      bottom: bottom,
    );
  }
}

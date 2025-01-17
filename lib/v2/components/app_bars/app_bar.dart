import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:papilus_component_gramedia/v2/components/texts/text.dart';
import 'package:papilus_component_gramedia/v2/foundation/foundation.dart';

class SmartlibAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SmartlibAppBar({
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

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: SmartlibText(title, style: SmartlibFont.h4),
      centerTitle: centerTitle,
      titleTextStyle: titleTextStyle,
      backgroundColor: SmartlibColors.white,
      foregroundColor: SmartlibColors.neutral700,
      automaticallyImplyLeading: showLeading,
      leading: !showLeading ? null : leading,
      leadingWidth: 60,
      titleSpacing: 0,
      actions: actions,
      elevation: elevation,
      systemOverlayStyle: systemOverlayStyle ?? SystemUiOverlayStyle.dark,
    );
  }
}

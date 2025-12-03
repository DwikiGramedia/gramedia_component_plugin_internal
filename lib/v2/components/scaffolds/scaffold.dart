import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/v2/foundation/foundation.dart';

class PapyrusScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget body;
  final Color backgroundColor;
  final Widget? bottomNavigationBar;
  final bool withSafeArea;

  const PapyrusScaffold({
    super.key,
    this.appBar,
    required this.body,
    this.backgroundColor = PapyrusColors.white,
    this.bottomNavigationBar,
    this.withSafeArea = true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: appBar,
      body: withSafeArea ? SafeArea(child: body) : body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/v2/components/animations/loading_indicator.dart';

class PapyrusImage extends StatelessWidget {
  final String src;
  final bool isLocalFile;
  final double? height;
  final double? width;

  const PapyrusImage(
    this.src, {
    super.key,
    this.isLocalFile = true,
    this.height,
    this.width,
  });

  const PapyrusImage.network(
    this.src, {
    super.key,
    this.isLocalFile = false,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    if (isLocalFile) {
      return Image.asset(
        src,
        height: height ?? 160,
        width: width ?? 120,
      );
    }
    return Image.network(
      src,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) {
          return child;
        }
        return const Center(child: PapyrusProgressIndicator());
      },
      height: height ?? 160,
      width: width ?? 120,
      fit: BoxFit.cover,
    );
  }
}

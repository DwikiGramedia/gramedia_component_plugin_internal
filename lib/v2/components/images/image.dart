import 'package:flutter/material.dart';

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
        errorBuilder: (context, error, stackTrace) {
          return Image.asset(
            'assets/image-2.png',
            height: height ?? 160,
            width: width ?? 120,
          );
        },
      );
    }
    return Image.network(
      src,
      errorBuilder: (context, error, stackTrace) {
        return Image.asset(
          'assets/image-2.png',
          height: height ?? 160,
          width: width ?? 120,
        );
      },
      loadingBuilder: (context, child, loadingProgress) {
        return Image.asset(
          'assets/image-2.png',
          height: height ?? 160,
          width: width ?? 120,
        );
      },
      height: height ?? 160,
      width: width ?? 120,
      fit: BoxFit.cover,
    );
  }
}

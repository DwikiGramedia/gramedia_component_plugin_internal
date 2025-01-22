import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/v2/foundation/foundation.dart';

class PapyrusSnackbar {
  bool isShowing = false;

  void show(
    BuildContext context,
    String message, {
    VoidCallback? onTapButton,
    Color backgroundColor = PapyrusColors.neutral600,
    String buttonMessage = 'Muat Ulang',
    Duration duration = const Duration(milliseconds: 3000),
  }) {
    if (isShowing) return;
    isShowing = true;

    Flushbar(
      message: message,
      messageText: Text(
        message,
        style: PapyrusFont.bodySMedium.copyWith(
          color: PapyrusColors.neutral50,
        ),
      ),
      margin: const EdgeInsets.all(16),
      borderRadius: BorderRadius.circular(8),
      borderWidth: 0,
      backgroundColor: backgroundColor,
      mainButton: onTapButton == null
          ? null
          : Container(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                buttonMessage,
                style: PapyrusFont.bodyXSExtraBold.copyWith(
                  color: PapyrusColors.brand200,
                ),
              ),
            ),
      duration: duration,
      onStatusChanged: onStatusChanged,
      onTap: (flushbar) {
        if (onTapButton == null) return;
        if (!flushbar.isShowing()) return;
        onTapButton.call();
        isShowing = false;
        flushbar.dismiss();
      },
    ).show(context);
  }

  void onStatusChanged(FlushbarStatus? status) {
    if (status?.name == 'DISMISSED') {
      isShowing = false;
    }
  }
}

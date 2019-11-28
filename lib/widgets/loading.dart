import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Loading {
  static bool isLoading = false;

  static void showLoading(BuildContext context) {
    if (!isLoading) {
      isLoading = true;
      showGeneralDialog(
          context: context,
          barrierDismissible: false,
          barrierLabel:
              MaterialLocalizations.of(context).modalBarrierDismissLabel,
          pageBuilder: (BuildContext context, Animation animation,
              Animation secondAnimation) {
            return Align(
              child: ClipRect(
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.black54,
                  child: CupertinoActivityIndicator(),
                ),
              ),
            );
          }).then((v) {
        isLoading = false;
      });
    }
  }

  static void hideLoading(BuildContext context) {
    if (isLoading) {
      Navigator.of(context).pop();
    }
  }
}

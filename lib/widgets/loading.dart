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
          transitionDuration: Duration(milliseconds: 150),
          pageBuilder: (BuildContext context, Animation animation,
              Animation secondAnimation) {
            return Align(
              child: ClipRect(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  width: 100,
                  height: 100,
                  child: CupertinoActivityIndicator(
                    radius: 20,
                  ),
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

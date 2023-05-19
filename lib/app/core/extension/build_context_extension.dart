import 'package:flutter/material.dart';
import '../widgets/alert/alert_media.dart';

extension BuildContextX on BuildContext {
  showErrorMessage(
          {required String message,
          bool dismissible = true,
          Function? onCancel}) =>
      showDialog(
          barrierDismissible: dismissible,
          context: this,
          builder: (context) => ErrorDialog(message, () {
                if (onCancel != null) {
                  onCancel();
                }
                Navigator.of(context).pop();
              }));
}

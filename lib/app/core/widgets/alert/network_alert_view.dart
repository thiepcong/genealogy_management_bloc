import 'package:flutter/material.dart';
import 'package:genealogy_management/app/core/extension/build_context_extension.dart';

import '../../../route_app.dart';
import '../../values/text_styles.dart';

class NetworkAlertView {
  NetworkAlertView._privateConstructor();

  static final NetworkAlertView _instance =
      NetworkAlertView._privateConstructor();

  static NetworkAlertView get instance => _instance;

  bool _isShowing = false;

  show() {
    if (_isShowing) {
      return;
    }

    // BuildContext? context = navigatorKey.currentContext;

    // if (context == null) {
    //   print('Global context is null');
    //   return;
    // }

    _isShowing = true;

    const message =
        'Network not found. \nPlease check again in a location with a good network environment.';

    // context.showErrorMessage(
    //     message: message,
    //     dismissible: false,
    //     onCancel: () {
    //       _isShowing = false;
    //     });
  }
}

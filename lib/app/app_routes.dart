import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'main_router.dart';

abstract class Routes {
  const Routes._();

  static const home = _Paths.home;
  static const login = _Paths.login;
}

abstract class _Paths {
  static const home = 'home';
  static const login = 'login';
}

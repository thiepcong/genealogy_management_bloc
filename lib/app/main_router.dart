import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'modules/register/views/home/registration_info.dart';
import 'modules/register/views/login/confirm.dart';
import 'modules/register/views/login/registration_phone.dart';
import 'modules/register/views/login/welcome.dart';
part 'main_router.gr.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: ConfirmView),
  MaterialRoute(page: RegisterInfoView),
  MaterialRoute(page: RegisterPhoneView),
  MaterialRoute(page: WelcomeView, initial: true),
])
class MainRouter extends _$MainRouter {
  MainRouter({GlobalKey<NavigatorState>? navigatorKey}) : super(navigatorKey);
}

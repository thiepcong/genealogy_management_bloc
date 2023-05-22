// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'main_router.dart';

class _$MainRouter extends RootStackRouter {
  _$MainRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    ConfirmViewRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ConfirmView(),
      );
    },
    RegisterInfoViewRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const RegisterInfoView(),
      );
    },
    RegisterPhoneViewRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const RegisterPhoneView(),
      );
    },
    WelcomeViewRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const WelcomeView(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          ConfirmViewRoute.name,
          path: '/confirm-view',
        ),
        RouteConfig(
          RegisterInfoViewRoute.name,
          path: '/register-info-view',
        ),
        RouteConfig(
          RegisterPhoneViewRoute.name,
          path: '/register-phone-view',
        ),
        RouteConfig(
          WelcomeViewRoute.name,
          path: '/',
        ),
      ];
}

/// generated route for
/// [ConfirmView]
class ConfirmViewRoute extends PageRouteInfo<void> {
  const ConfirmViewRoute()
      : super(
          ConfirmViewRoute.name,
          path: '/confirm-view',
        );

  static const String name = 'ConfirmViewRoute';
}

/// generated route for
/// [RegisterInfoView]
class RegisterInfoViewRoute extends PageRouteInfo<void> {
  const RegisterInfoViewRoute()
      : super(
          RegisterInfoViewRoute.name,
          path: '/register-info-view',
        );

  static const String name = 'RegisterInfoViewRoute';
}

/// generated route for
/// [RegisterPhoneView]
class RegisterPhoneViewRoute extends PageRouteInfo<void> {
  const RegisterPhoneViewRoute()
      : super(
          RegisterPhoneViewRoute.name,
          path: '/register-phone-view',
        );

  static const String name = 'RegisterPhoneViewRoute';
}

/// generated route for
/// [WelcomeView]
class WelcomeViewRoute extends PageRouteInfo<void> {
  const WelcomeViewRoute()
      : super(
          WelcomeViewRoute.name,
          path: '/',
        );

  static const String name = 'WelcomeViewRoute';
}

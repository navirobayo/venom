import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:venom/src/peresentation/auth/pages/user_auth_page.dart';
import 'package:venom/src/peresentation/home/pages/home_page.dart';
import 'package:venom/src/peresentation/intro/page/intro_page.dart';
import 'package:venom/src/peresentation/ride/pages/my_rides_page.dart';
import 'package:venom/src/peresentation/splash/pages/splash_page.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = <AutoRoute>[
    AutoRoute(
      path: "/",
      page: Splash.page,
      initial: true,
    ),
    AutoRoute(
      path: "/intro",
      page: Intro.page,
    ),
    AutoRoute(
      path: "/rides",
      page: Rides.page,
    ),
    CustomRoute(
      path: "/home",
      page: Home.page,
      durationInMilliseconds: 1500,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    AutoRoute(
      path: "/auth",
      page: Auth.page,
    ),
  ];
}

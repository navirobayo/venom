import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:venom/src/peresentation/auth/pages/user_auth_page.dart';
import 'package:venom/src/peresentation/gas_price/pages/gas_history_page.dart';
import 'package:venom/src/peresentation/home/pages/home_page.dart';
import 'package:venom/src/peresentation/intro/page/intro_page.dart';
import 'package:venom/src/peresentation/ride/pages/before_ride_page.dart';
import 'package:venom/src/peresentation/ride/pages/final_data_page.dart';
import 'package:venom/src/peresentation/ride/pages/km_in_bike_page.dart';
import 'package:venom/src/peresentation/ride/pages/rides_page.dart';
import 'package:venom/src/peresentation/ride/pages/new_ride_page.dart';
import 'package:venom/src/peresentation/ride/pages/ride_results_page.dart';
import 'package:venom/src/peresentation/splash/pages/splash_page.dart';
import 'package:venom/src/peresentation/tool_kit/pages/toolkit_page.dart';
import 'package:venom/src/peresentation/vehicle/pages/my_vehicle_page.dart';

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
      durationInMilliseconds: 500,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    AutoRoute(
      path: "/auth",
      page: Auth.page,
    ),
    AutoRoute(
      path: "/new_ride",
      page: New_ride.page,
    ),
    AutoRoute(
      path: "/final_data",
      page: Final_data.page,
    ),
    AutoRoute(
      path: "/ride_results_page",
      page: Ride_results_page.page,
    ),
    AutoRoute(
      path: "/before_ride",
      page: Before_ride.page,
    ),
    AutoRoute(
      path: "/km_in_bike",
      page: Km_in_bike.page,
    ),
    AutoRoute(
      path: "/my_vehicle",
      page: My_vehicle.page,
    ),
    AutoRoute(
      path: "/gas_history",
      page: Gas_history.page,
    ),
    AutoRoute(
      path: "/toolkit",
      page: Toolkit.page,
    ),
  ];
}

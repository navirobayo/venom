// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    Auth.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const UserAuthPage(),
      );
    },
    Home.name: (routeData) {
      final args = routeData.argsAs<HomeArgs>(orElse: () => const HomeArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HomePage(key: args.key),
      );
    },
    Intro.name: (routeData) {
      final args = routeData.argsAs<IntroArgs>(orElse: () => const IntroArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: IntroPage(key: args.key),
      );
    },
    Splash.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    Rides.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyRides(),
      );
    },
  };
}

/// generated route for
/// [UserAuthPage]
class Auth extends PageRouteInfo<void> {
  const Auth({List<PageRouteInfo>? children})
      : super(
          Auth.name,
          initialChildren: children,
        );

  static const String name = 'Auth';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class Home extends PageRouteInfo<HomeArgs> {
  Home({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          Home.name,
          args: HomeArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'Home';

  static const PageInfo<HomeArgs> page = PageInfo<HomeArgs>(name);
}

class HomeArgs {
  const HomeArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'HomeArgs{key: $key}';
  }
}

/// generated route for
/// [IntroPage]
class Intro extends PageRouteInfo<IntroArgs> {
  Intro({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          Intro.name,
          args: IntroArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'Intro';

  static const PageInfo<IntroArgs> page = PageInfo<IntroArgs>(name);
}

class IntroArgs {
  const IntroArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'IntroArgs{key: $key}';
  }
}

/// generated route for
/// [SplashPage]
class Splash extends PageRouteInfo<void> {
  const Splash({List<PageRouteInfo>? children})
      : super(
          Splash.name,
          initialChildren: children,
        );

  static const String name = 'Splash';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MyRides]
class Rides extends PageRouteInfo<void> {
  const Rides({List<PageRouteInfo>? children})
      : super(
          Rides.name,
          initialChildren: children,
        );

  static const String name = 'Rides';

  static const PageInfo<void> page = PageInfo<void>(name);
}

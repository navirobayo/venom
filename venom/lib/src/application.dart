import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venom/src/config/constants/general_constants.dart';
import 'package:venom/src/config/routes/router.dart';
import 'package:venom/src/injectable/injectable.dart';

class Application extends StatelessWidget {
  Application({super.key});

  final _appRouter = getIt.get<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: GeneralConstants.defaultDesignSize,
        minTextAdapt: true,
        builder: (_, __) {
          return MaterialApp.router(
            title: GeneralConstants.title,
            theme: ThemeData(
              textTheme:
                  GoogleFonts.chakraPetchTextTheme(Theme.of(context).textTheme),
              brightness: Brightness.light,
              useMaterial3: true,
            ),
            darkTheme: ThemeData(
              textTheme:
                  GoogleFonts.chakraPetchTextTheme(Theme.of(context).textTheme)
                      .apply(bodyColor: Colors.white),
              brightness: Brightness.dark,
              useMaterial3: true,
            ),
            themeMode: ThemeMode.dark,
            routerDelegate: _appRouter.delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
            debugShowCheckedModeBanner: false,
          );
        });
  }
}

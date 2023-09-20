import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venom/src/config/constants/general_constants.dart';
import 'package:venom/src/config/routes/router.dart';
import 'package:venom/src/injectable/injectable.dart';
import 'package:venom/src/presentation/settings/bloc/set_theme/set_theme_bloc.dart';

class Application extends StatelessWidget {
  Application({super.key});

  final _appRouter = getIt.get<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: GeneralConstants.defaultDesignSize,
      minTextAdapt: true,
      builder: (_, __) {
        return BlocProvider(
          create: (context) => getIt.get<SetThemeBloc>(),
          child: BlocBuilder<SetThemeBloc, SetThemeState>(
            bloc: getIt.get<SetThemeBloc>(),
            builder: (context, state) {
              return MaterialApp.router(
                title: GeneralConstants.title,
                theme: ThemeData(
                  colorSchemeSeed: getIt.get<SetThemeBloc>().state.themeColor,
                  focusColor: Theme.of(context).colorScheme.onBackground,
                  textTheme: GoogleFonts.chakraPetchTextTheme(
                    Theme.of(context).textTheme,
                  ),
                  brightness: Brightness.light,
                  useMaterial3: true,
                ),
                darkTheme: ThemeData(
                  colorSchemeSeed: getIt.get<SetThemeBloc>().state.themeColor,
                  textTheme: GoogleFonts.chakraPetchTextTheme(
                    Theme.of(context).textTheme,
                  ).apply(bodyColor: Colors.white),
                  brightness: Brightness.dark,
                  useMaterial3: true,
                ),
                themeMode: getIt.get<SetThemeBloc>().state.themeMode,
                routerDelegate: _appRouter.delegate(),
                routeInformationParser: _appRouter.defaultRouteParser(),
                debugShowCheckedModeBanner: false,
              );
            },
          ),
        );
      },
    );
  }
}

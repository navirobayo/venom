import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:venom/src/config/constants/png_assets.dart';
import 'package:venom/src/config/routes/router.dart';
import 'package:venom/src/injectable/injectable.dart';
import 'package:venom/src/presentation/home/bloc/home_bloc.dart';

@RoutePage(name: 'splash')
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    Future<void>.delayed(const Duration(seconds: 2))
        .whenComplete(() => getIt.get<AppRouter>().replaceNamed('/intro'));
    return BlocProvider(
      create: (_) => getIt.get<HomeBloc>(),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: BlocConsumer(
          bloc: getIt.get<HomeBloc>(),
          listener: (context, state) {},
          builder: (context, state) {
            return getIt.get<HomeBloc>().state.maybeWhen(
              orElse: () {
                return Container(
                  width: 1.sw,
                  height: 1.sh,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage(PngAssets.icon),
                    ),
                  ),
                  child: ColoredBox(
                    color: Theme.of(context).colorScheme.background,
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 2,
                        sigmaY: 2,
                      ),
                      child: const Center(
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                );
              },
              failure: (failure, message) {
                return SizedBox(
                  width: 1.sw,
                  height: 1.sh,
                  child: ColoredBox(
                    color: Theme.of(context).colorScheme.background,
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 2,
                        sigmaY: 2,
                      ),
                      child: Center(
                        child: SizedBox(
                          width: 0.8.sw,
                          height: 230.h,
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(16.r),
                                width: 0.8.sw,
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey.withOpacity(0.4),
                                  borderRadius: BorderRadius.circular(26.r),
                                ),
                                child: Text(
                                  'Please Try Again',
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    fontSize: 22.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(height: 35.h),
                              InkWell(
                                onTap: () {
                                  getIt.get<HomeBloc>().add(
                                        const HomeEvent.checkDataIsAvailable(),
                                      );
                                },
                                child: Container(
                                  width: 110.w,
                                  height: 50.h,
                                  decoration: BoxDecoration(
                                    color: Colors.blueGrey.withOpacity(0.75),
                                    borderRadius: BorderRadius.circular(8.r),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.white54,
                                        blurRadius: 15,
                                        spreadRadius: 0.1,
                                      ),
                                    ],
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Try Again',
                                    textAlign: TextAlign.center,
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      fontSize: 20.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

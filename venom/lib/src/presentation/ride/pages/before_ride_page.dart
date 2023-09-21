import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:timer_picker_spinner/timer_picker_spinner.dart';
import 'package:venom/src/config/routes/router.dart';
import 'package:venom/src/injectable/injectable.dart';
import 'package:venom/src/presentation/ride/bloc/before_ride/before_ride_bloc.dart';

@RoutePage(name: 'before_ride')
class BeforeRidePage extends StatelessWidget {
  const BeforeRidePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BeforeRideBloc, BeforeRideState>(
      bloc: getIt.get<BeforeRideBloc>(),
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              title: const Text('Ride time'),
            ),
            body: Container(
              padding: const EdgeInsets.only(top: 100),
              width: 1.sw,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TimeSelectorSpinner(
                    fontSize: 26.sp,
                    selectedFontColor: Colors.white,
                    unselectedFontColor: Colors.white54,
                    itemSpace: 25.w,
                    height: 250.h,
                    width: 0.9.sw,
                    onTimeChange: onTimeChange,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 50),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Theme.of(context).focusColor,),
                      ),
                      onPressed: () {
                        getIt.get<BeforeRideBloc>().state.maybeWhen(
                              orElse: () {},
                              idle: (timeSelected) {
                                getIt.get<BeforeRideBloc>().add(
                                    BeforeRideEvent.acceptTime(timeSelected),);

                                getIt.get<AppRouter>().pushNamed('/km_in_bike');
                              },
                            );
                      },
                      child: const Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ),
                ],
              ),
            ),);
      },
    );
  }

  void onTimeChange(DateTime value) {
    getIt.get<BeforeRideBloc>().add(BeforeRideEvent.changeTime(value));
  }
}

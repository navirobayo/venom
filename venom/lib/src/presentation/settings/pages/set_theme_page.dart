import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:venom/src/injectable/injectable.dart';
import 'package:venom/src/presentation/settings/bloc/set_theme/set_theme_bloc.dart';

@RoutePage(name: 'setTheme')
class SetThemePage extends StatelessWidget {
  const SetThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SizedBox(
          width: 1.sw,
          height: 1.sh,
          child: BlocBuilder<SetThemeBloc, SetThemeState>(
            bloc: getIt.get<SetThemeBloc>(),
            builder: (context, state) {
              return Column(
                children: [
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: SizedBox(
                          width: 40.r,
                          height: 30.r,
                          child: const Icon(Icons.arrow_back_ios_new_rounded),
                        ),
                      ),
                      Text(
                        'Themes',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: Theme.of(context).colorScheme.onBackground,
                              fontSize: 26.sp,
                            ),
                      ),
                      SizedBox(width: 55.r, height: 40.r),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  Padding(
                    padding: EdgeInsets.only(left: 26.w, right: 26.w),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Theme Mode :',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: Theme.of(context).colorScheme.onBackground,
                              fontSize: 16.sp,
                            ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 130.w,
                        child: ListTile(
                          horizontalTitleGap: 0,
                          title: const Text('Dark'),
                          leading: Radio<int>(
                            value: 2,
                            groupValue:
                                ThemeMode.values.indexOf(state.themeMode!),
                            splashRadius: 15,
                            onChanged: (int? value) {
                              getIt
                                  .get<SetThemeBloc>()
                                  .add(SetThemeEvent.setTheme(ThemeMode.dark));
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 130.w,
                        child: ListTile(
                          horizontalTitleGap: 0,
                          title: const Text('Light'),
                          leading: Radio<int>(
                            value: 1,
                            groupValue:
                                ThemeMode.values.indexOf(state.themeMode!),
                            splashRadius: 15,
                            onChanged: (int? value) {
                              getIt
                                  .get<SetThemeBloc>()
                                  .add(SetThemeEvent.setTheme(ThemeMode.light));
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 130.w,
                        child: ListTile(
                          horizontalTitleGap: 0,
                          title: const Text('System'),
                          leading: Radio<int>(
                            value: 0,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            groupValue:
                                ThemeMode.values.indexOf(state.themeMode!),
                            splashRadius: 15,
                            onChanged: (int? value) {
                              getIt.get<SetThemeBloc>().add(
                                    SetThemeEvent.setTheme(ThemeMode.system),
                                  );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: EdgeInsets.only(left: 26.w, right: 26.w),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Theme Colors :',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: Theme.of(context).colorScheme.onBackground,
                              fontSize: 16.sp,
                            ),
                      ),
                    ),
                  ),
                  GridView(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 150.h,
                      crossAxisSpacing: 20.w,
                      mainAxisSpacing: 20.h,
                    ),
                    padding:
                        EdgeInsets.only(left: 26.w, right: 26.w, top: 30.h),
                    children: const [
                      ThemeBlocTileWidget(
                        color: Colors.red,
                      ),
                      ThemeBlocTileWidget(
                        color: Colors.purple,
                      ),
                      ThemeBlocTileWidget(
                        color: Colors.orange,
                      ),
                      ThemeBlocTileWidget(
                        color: Colors.green,
                      ),
                      ThemeBlocTileWidget(
                        color: Colors.blue,
                      ),
                      ThemeBlocTileWidget(
                        color: Colors.brown,
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class ThemeBlocTileWidget extends StatelessWidget {
  const ThemeBlocTileWidget({
    required this.color,
    super.key,
  });
  final Color color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          getIt.get<SetThemeBloc>().add(SetThemeEvent.changeThemeColor(color)),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
    );
  }
}

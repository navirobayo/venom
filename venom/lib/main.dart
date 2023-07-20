import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:venom/src/application.dart';
import 'package:venom/src/config/constants/general_constants.dart';
import 'package:venom/src/injectable/injectable.dart';
import 'package:venom/src/injectable/module_injection/main_modules_injection.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await _startupSetup();
  runApp(Application());
}

//
Future _startupSetup() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initializeInjection();
  if (!kIsWeb) {
    await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp],
    );
  }

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
    ),
  );
}

//

Future<void> _initializeInjection() async {
  if (GeneralConstants.didStartSetup) {
    return;
  }
  GeneralConstants.didStartSetup = true;
  configureInjection();
  final mainModule = MainModulesInjection();
  await mainModule.initDatabase();
  await mainModule.registerHiveAdapters();
}

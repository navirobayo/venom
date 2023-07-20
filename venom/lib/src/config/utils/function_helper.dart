import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logger/logger.dart';
import 'package:venom/src/config/routes/router.dart';
import 'package:venom/src/injectable/injectable.dart';

class FunctionHelper {
  static final FunctionHelper _singleton = FunctionHelper._();

  factory FunctionHelper() => _singleton;

  FunctionHelper._();
  // make one instance of Logger Class
  Logger logger = Logger();

  void logMessage(String message) {
    logger.i(message);
  }

// funtion for showing ErrorDetails
  void logErrorDetailMessage(Object errorExep,
      {String? libraryName, String bodyMessage = ''}) {
    FlutterErrorDetails(
      exception: errorExep,
      library: libraryName,
      context: ErrorSummary(bodyMessage),
    );
  }

  void displaySnackBar({
    required String message,
    bool isFailureMessage = false,
  }) {
    BuildContext context = getIt.get<AppRouter>().navigatorKey.currentContext!;
    final snackBar = SnackBar(
      content: Text(
        message.isNotEmpty ? message : 'Empty',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 14.r),
      ),
      backgroundColor: isFailureMessage ? Colors.redAccent : Colors.greenAccent,
    );

    ScaffoldMessenger.of(context)
      ..clearSnackBars()
      ..showSnackBar(snackBar);
  }
}

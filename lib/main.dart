import 'dart:async';
import 'package:flutter/material.dart';

import './injection.dart';
import 'application.dart';
Future<void> main() async {
  ///[cache some errors]
  // FlutterError.onError = (FlutterErrorDetails details) async {
  //   if (!kReleaseMode) {
  //     FlutterError.dumpErrorToConsole(details);
  //   } else {
  //     Zone.current.handleUncaughtError(details.exception, details.stack!);
  //   }
  // };

  runZonedGuarded(() async {
          WidgetsFlutterBinding.ensureInitialized();
            configureDependencies();
            runApp(const Application());
          },(e,s){
            print(e);
          });
    // runApp(
    //     const Application()
    //   //     MultiBlocProvider(
    //   //   providers: [
    //   //     //TODO after
    //   //   ],
    //   //   child: const Application(),
    //   // )
    // );
}


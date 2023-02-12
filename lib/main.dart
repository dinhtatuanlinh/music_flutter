import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

import './injection.dart';
import 'application.dart';
import 'common/app_constants.dart';

Future<void> main() async {
  ///[cache some errors]
  // FlutterError.onError = (FlutterErrorDetails details) async {
  //   if (!kReleaseMode) {
  //     FlutterError.dumpErrorToConsole(details);
  //   } else {
  //     Zone.current.handleUncaughtError(details.exception, details.stack!);
  //   }
  // };
  // var savedDir = Directory('/storage/emulated/0/Android/download');
  // bool hasExisted = await savedDir.exists();


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
// void main() {
//   var a = 1;
//   var b = 2;
//   a == b
//       ? (
//       a == 3
//       ? b = 4
//       : print(a)
//   )
//       : print(b);
//
//   if (a == b) {
//     if (a == 3) {
//       b = 4;
//     } else {
//       print(a);
//     }
//   } else {
//
//     print(b);
//   }
// }

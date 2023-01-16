import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
// import 'package:youtube_explode_dart/youtube_explode_dart.dart';

import './injection.dart';
import 'application.dart';
Future<void> main() async {

    // var yt = YoutubeExplode();
    // var streamInfo = await yt.videos.streamsClient.getManifest('oA7asFEgYfc');
    //
    // print(streamInfo);
    //
    // // Close the YoutubeExplode's http client.
    // yt.close();

  ///[cache some errors]
  FlutterError.onError = (FlutterErrorDetails details) async {
    if (!kReleaseMode) {
      FlutterError.dumpErrorToConsole(details);
    } else {
      Zone.current.handleUncaughtError(details.exception, details.stack!);
    }
  };

  runZonedGuarded(() async {
          WidgetsFlutterBinding.ensureInitialized();
            configureDependencies();
            runApp(const Application());
          },(e,s){
            print(e);
          });
    runApp(
        const Application()
      //     MultiBlocProvider(
      //   providers: [
      //     //TODO after
      //   ],
      //   child: const Application(),
      // )
    );
}

// Future<void> main() async {
//     var yt = YoutubeExplode();
//     var streamInfo = await yt.videos.streamsClient.getManifest('oA7asFEgYfc');
//
//     print(streamInfo);
//
//     // Close the YoutubeExplode's http client.
//     yt.close();
// }
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import './common/navigation.dart';
//
// import './injection.dart';
// import 'utils/router_observer.dart';
// import './cubit/counter_cubit.dart';
// void main() {
//   configureDependencies();
//
//     runApp(
//         const Application()
//       //     MultiBlocProvider(
//       //   providers: [
//       //     //TODO after
//       //   ],
//       //   child: const Application(),
//       // )
//     );
// }
//
// class Application extends StatefulWidget {
//   const Application({Key? key}) : super(key: key);
//
//   @override
//   _ApplicationState createState() => _ApplicationState();
// }
//
// class _ApplicationState extends State<Application> {
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//         providers: [
//           BlocProvider<CounterCubit>(create: (_) => getIt.get<CounterCubit>()),
//
//     ],
//       child: MaterialApp(
//         navigatorObservers: [getIt.get<AppRouteObserver>()],
//         debugShowCheckedModeBanner: false,
//         navigatorKey: navigation.navigatorKey,
//         initialRoute: AppRouter.splash,
//         onGenerateRoute: (settings) =>
//             generateRoute(routes: AppRouter(), settings: settings),
//       )
//     );
//   }
//   Route<dynamic>? generateRoute({
//     required RouterModule routes,
//     required RouteSettings settings,
//   }) {
//     final routesMap = <String, MaterialPageRoute>{};
//     routesMap.addAll(routes.getRoutes(settings));
//     return routesMap[settings.name];
//   }
// }

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() => runApp(const VideoApp());

/// Stateful widget to fetch and then display video content.
class VideoApp extends StatefulWidget {
    const VideoApp({Key? key}) : super(key: key);

    @override
    _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
    late VideoPlayerController _controller;

    @override
    void initState() {
        super.initState();
        _controller = VideoPlayerController.asset('assets/videos/khoi_thuoc_doi_cho.mp4')
        ..initialize().then((_) {
        setState(() {});
        _controller.play();
        });

        // _controller = VideoPlayerController.network(
        //     'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4')
        //     ..initialize().then((_) {
        //         // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        //         setState(() {});
        //     });

    }

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Video Demo',
            home: Scaffold(
                body: Center(
                    child: _controller.value.isInitialized
                        ? AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                    )
                        : Container(),
                ),
                floatingActionButton: FloatingActionButton(
                    onPressed: () {
                        setState(() {
                            _controller.value.isPlaying
                                ? _controller.pause()
                                : _controller.play();
                        });
                    },
                    child: Icon(
                        _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                    ),
                ),
            ),
        );
    }



    @override
    void dispose() {
        super.dispose();
        _controller.dispose();
    }
}


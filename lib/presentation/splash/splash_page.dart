import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../../common/navigation.dart';

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
        _controller = VideoPlayerController.asset('assets/videos/mat_moc.mp4')
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
                // floatingActionButton: FloatingActionButton(
                //     onPressed: () {
                //         setState(() {
                //             _controller.value.isPlaying
                //                 ? _controller.pause()
                //                 : _controller.play();
                //         });
                //     },
                //     child: Icon(
                //         _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                //     ),
                // ),
                floatingActionButton: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                        FloatingActionButton(
                            heroTag: Text("btn3"),
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
                        const SizedBox(height: 8),
                        FloatingActionButton(
                            heroTag: Text("btn2"),
                            child: const Icon(Icons.remove),
                            onPressed:  () {
                                navigation.navigateTo(AppRouter.counter);
                            },
                        ),
                    ],
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


import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'dart:async';

import 'package:flutter/services.dart';


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
                // auto play
                // _controller.play();
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
                backgroundColor: Colors.black,
                appBar: AppBar(
                    backgroundColor: Color(0xFF151026),
                    title: Text('Video Demo'),
                ),
                body: Column(
                    children: <Widget>[
                        Container(
                            child: _controller.value.isInitialized
                                ? AspectRatio(
                                aspectRatio: _controller.value.aspectRatio,
                                child: VideoPlayer(_controller),
                            )
                                : Container(),
                        ),
                        Container(
                            child: Row(
                                children: [
                                    Expanded(
                                        flex:5,
                                        child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                color: Colors.green,
                                            ),
                                            child: Text("Video!", style: TextStyle(color: Colors.white),),
                                        ),
                                    ),
                                Expanded(
                                    flex:5,
                                    child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Colors.red,
                                        ),
                                        child: Text("Video!", style: TextStyle(color: Colors.white),),
                                    ),
                                    ),
                                ],
                            ),
                        ),
                    ]
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


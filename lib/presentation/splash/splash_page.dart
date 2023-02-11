import 'dart:io';
// import 'package:android_path_provider/android_path_provider.dart';
// import 'package:file_picker/file_picker.dart';

import 'package:flutter/material.dart';
import 'package:music/common/app_constants.dart';
import 'package:path_provider/path_provider.dart';
import 'package:video_player/video_player.dart';
import '../../common/navigation.dart';

class VideoApp extends StatefulWidget {
  const VideoApp({Key? key}) : super(key: key);

  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  late VideoPlayerController _controller;


  // Future<Directory?>? _appDocumentsDirectory;
  // void _requestAppDocumentsDirectory() {
  //   setState(() {
  //     _appDocumentsDirectory = getApplicationDocumentsDirectory();
  //   });
  // }
  Future<String> getPath() async {
    var dir = await getApplicationDocumentsDirectory();
    var path = dir.path;
    return path;

  }
  @override
  void initState() {
    super.initState();
    getPath().then((result){
      print(result);
    });
    // _requestAppDocumentsDirectory();
    //   _controller = VideoPlayerController.file(File('$_appDocumentsDirectory/mat_moc.mp4'))
    //     ..initialize().then((_) {
    //       setState(() {});
    //       _controller.play();
    //     });
  }
    // getPath().then((result){
    //   _controller = VideoPlayerController.file(File('$result/mat_moc.mp4'))
    //     ..initialize().then((_) {
    //       setState(() {});
    //       _controller.play();
    //     });
      // _controller = VideoPlayerController.asset('assets/videos/mat_moc.mp4')
      //     ..initialize().then((_) {
      //         setState(() {});
      //         _controller.play();
      //     });
    // });
  // void getFiles() async { //asyn function to get list of files
  //     List<StorageInfo> storageInfo = await PathProviderEx.getStorageInfo();
  //     var root = storageInfo[0].rootDir; //storageInfo[1] for SD card, geting the root directory
  //     var fm = FileManager(root: Directory(root)); //
  //     files = await fm.filesTree(
  //         //set fm.dirsTree() for directory/folder tree list
  //         excludedPaths: ["/storage/emulated/0/Android"],
  //         extensions: ["png", "pdf"] //optional, to filter files, remove to list all,
  //         //remove this if your are grabbing folder list
  //     );
  //     setState(() {}); //update the UI
  // }
  // Future<String> get _localPath async {
  //
  //
  //     return directory.path;
  // }
  // Future<File> get _localFile async {
  //     final path = await _localPath;
  //     return File('$path/mat_moc.mp4');
  // }





    // print(value);

    // _controller = VideoPlayerController.network(
    //     'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4')
    //     ..initialize().then((_) {
    //         // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
    //         setState(() {});
    //     });



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
              onPressed: () {
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

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'audio.player.dart';
import 'audio.recorder.dart';

class RecorPlay extends StatefulWidget {
  const RecorPlay({Key? key}) : super(key: key);

  @override
  State<RecorPlay> createState() => _RecorPlayState();
}

class _RecorPlayState extends State<RecorPlay> {
  bool showPlayer = false;
  String? audioPath;

  @override
  void initState() {
    showPlayer = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var box = MediaQuery.of(context).size;
    return Scaffold(
      //appBar: AppBar(title: const Text('Record and Play')),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          Lottie.asset(
            'assets/json/robot.json',
            width: box.width,
            height: box.width * .8,
          ),
          Center(
            child: SizedBox(
              width: box.width * 1.2,
              height: box.width * .4,
              child: showPlayer
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: AudioPlayer(
                        source: audioPath!,
                        onDelete: () {
                          setState(() => showPlayer = false);
                        },
                      ),
                    )
                  : AudioRecorder(
                      onStop: (path) {
                        if (kDebugMode) print('Recorded file path: $path');
                        setState(() {
                          audioPath = path;
                          showPlayer = true;
                        });
                      },
                    ),
            ),
          ),
          Expanded(
            child: Lottie.asset(
              'assets/json/infinito.json',
            ),
          ),
        ],
      ),
    );
  }
}

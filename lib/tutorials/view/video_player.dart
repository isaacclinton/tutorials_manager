import 'dart:io';

import 'package:dart_vlc/dart_vlc.dart';
import 'package:flutter/material.dart';
import 'package:synchronized/synchronized.dart';
import 'package:path/path.dart' as path;
import 'package:video_player/models/models.dart';

class VideoPlayer extends StatefulWidget {
  const VideoPlayer({
    super.key,
    required this.path,
    this.videoDetails,
    this.onClosed,
    this.onPaused,
    this.initialDuration,
  });

  final String path;
  final VideoDetails? videoDetails;
  final Duration? initialDuration;
  final Function(Duration? duration)? onClosed;
  final Function(Duration? duration)? onPaused;

  @override
  VideoPlayerState createState() => VideoPlayerState();
}

class VideoPlayerState extends State<VideoPlayer> {
  bool isLoading = true;

  late Player player;
  bool isHovering = false;
  CurrentState current = CurrentState();
  PositionState position = PositionState();
  PlaybackState playback = PlaybackState();
  GeneralState general = GeneralState();
  List<Device> devices = <Device>[];
  double bufferingProgress = 0.0;
  final lock = Lock();
  bool isPlaying = false;
  bool startedPlaying = false;

  @override
  void initState() {
    super.initState();
    print("Initial duration: ${widget.initialDuration}");
    VideoDimensions? videoDimensions;
    if (widget.videoDetails != null) {
      if (widget.videoDetails!.size != null) {
        videoDimensions = VideoDimensions(
          widget.videoDetails!.size!.width,
          widget.videoDetails!.size!.height,
        );
      }
    }
    player = Player(id: 0, videoDimensions: videoDimensions);

    if (mounted) {
      player.positionStream.listen((value) {
        position = value;
      });
      player.playbackStream.listen((value) {
        if (value.isPlaying != isPlaying) {
          isPlaying = value.isPlaying;
          if (!isPlaying) {
            if (startedPlaying) {
              widget.onPaused?.call(player.position.position);
            } else {
              startedPlaying = true;
            }
          }
          setState(() => playback = value);
        }
      });
      player.errorStream.listen((event) {
        debugPrint('libVLC error.');
      });
      devices = Devices.all;
      Equalizer equalizer = Equalizer.createMode(EqualizerMode.live);
      equalizer.setPreAmp(10.0);
      equalizer.setBandAmp(31.25, 10.0);
      player.setEqualizer(equalizer);

      player.open(Media.file(File(widget.path)));
      if (widget.initialDuration != null) {
        print("seeking to: ${widget.initialDuration}");
        player.seek(widget.initialDuration!);
      }
      isLoading = false;
      setState(() {});
    }
  }

  @override
  void dispose() {
    try {
      player.pause();
      player.dispose();
    } catch (_) {}
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MouseRegion(
        onHover: (event) {
          setState(() {
            isHovering = true;
          });
          lock.synchronized(() {
            return Future.delayed(const Duration(seconds: 6)).then((value) {
              if (mounted) {
                setState(() {
                  isHovering = false;
                });
              }
            });
          });
        },
        child: Stack(
          children: [
            if (isLoading)
              const Center(
                child: CircularProgressIndicator(),
              ),
            if (!isLoading)
              Positioned.fill(
                child: Video(
                  player: player,
                  volumeThumbColor: Colors.blue,
                  volumeActiveColor: Colors.blue,
                ),
              ),
            if (isHovering && !isLoading)
              Positioned(
                left: 0,
                top: 0,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        widget.onClosed?.call(position.position);
                        player.pause();
                        player.dispose();
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      path.basename(widget.path),
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

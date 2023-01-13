import 'dart:io';

import 'package:ffmpeg_kit_flutter/ffprobe_kit.dart';
import 'package:ffmpeg_kit_flutter/return_code.dart';
import 'package:process_run/shell.dart';
import 'package:video_player/models/models.dart';

VideoDetails _getVideoDetails(String output) {
  final regex = RegExp(r"^([\w:]*)=(.*)", multiLine: true);
  final matches = regex.allMatches(output);
  final matchesMap = Map.fromEntries(matches
      .where((e) => e.group(1) != null && e.group(2) != null)
      .map((e) => MapEntry(e.group(1)!, e.group(2)!)));

  final height = int.tryParse(matchesMap["height"] ?? "");
  final width = int.tryParse(matchesMap["width"] ?? "");

  final duration = double.tryParse(matchesMap["duration"] ?? "");
  final seconds = duration?.toInt();
  final milliseconds =
      duration == null ? null : ((duration - seconds!) * 1000).truncate();

  return VideoDetails(
      size: height == null || width == null
          ? null
          : Size(
              height: height,
              width: width,
            ),
      duration: seconds == null || milliseconds == null
          ? null
          : Duration(
              seconds: seconds,
              milliseconds: milliseconds,
            ));
}

Future<VideoDetails?> getVideoDetails(String filePath) async {
  String output;
  String command =
      'ffprobe -v error -show_format -show_streams  """$filePath"""';
  if (Platform.isWindows) {
    final shell = Shell(verbose: false);
    final results = await shell.run(command);
    final result = results[0];
    final returnCode = result.exitCode;
    if (returnCode != ReturnCode.success) {
      return null;
    }
    if (result.stdout is! String) {
      return null;
    }
    output = result.stdout;
  } else {
    final session = await FFprobeKit.execute(filePath);
    final information = await session.getOutput();
    final exitCode = await session.getReturnCode();

    if (!ReturnCode.isSuccess(exitCode)) {
      return null;
    }

    if (information == null) {
      return null;
    }

    output = information;
  }
  return _getVideoDetails(output);
}

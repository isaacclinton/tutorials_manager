import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart' as path;
import 'package:video_player/models/models.dart';

class TutorialItem extends StatelessWidget {
  const TutorialItem({
    Key? key,
    required this.tutorial,
    required this.onTap,
    required this.onDelete,
  }) : super(key: key);

  final Tutorial tutorial;
  final Function() onTap;
  final Function() onDelete;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 200,
        height: 150,
        padding: const EdgeInsets.all(10),
        color: Colors.blue,
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    path.basename(tutorial.videoPath),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Option(
                    title: "Left at",
                    value: Duration(seconds: tutorial.lastPlayedSeconds).formal,
                  ),
                  Option(
                    title: "Duration",
                    value: tutorial.videoDetails?.duration?.pretty ?? "Unknown",
                  ),
                  Option(
                    title: "Last Opened",
                    value: tutorial.lastOpened.left,
                  ),
                  if (tutorial.videoDetails?.duration != null)
                    Option(
                      title: "Progress",
                      value: ((tutorial.lastPlayedSeconds /
                                      tutorial
                                          .videoDetails!.duration!.inSeconds) *
                                  100)
                              .toStringAsFixed(1) +
                          r"%",
                    ),
                ],
              ),
            ),
            IconButton(
              onPressed: onDelete,
              icon: const Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Option extends StatelessWidget {
  const Option({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 130,
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Text(
          value,
          style: const TextStyle(
            fontSize: 14.5,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

extension on Duration {
  String get pretty {
    final hours = inHours;
    final minutes = inMinutes % 60;
    if (hours == 0) {
      if (minutes == 0) {
        return "$inSeconds seconds";
      }
      return "$minutes mins";
    }

    return "$hours hrs $minutes mins";
  }

  String get formal {
    if (inSeconds == 0) {
      return "00:00:00";
    }
    String? hoursStr;
    final hours = inHours;
    final minutes = inMinutes % 60;
    final seconds = inSeconds % 60;
    String secondsStr = seconds.toString();
    String minutesStr = minutes.toString();
    if (hours > 0) {
      hoursStr = hours.toString();
    }

    if (minutes < 10 && hours > 0) {
      minutesStr = NumberFormat("00").format(minutes);
    }

    if (seconds < 10) {
      secondsStr = NumberFormat("00").format(seconds);
    }

    return "${hoursStr != null ? "$hoursStr:" : ""}$minutesStr:$secondsStr";
  }
}

extension on DateTime {
  String get left {
    final timeFormatter = DateFormat("h:mm a");
    final dateFormatter = DateFormat("EEE d/M/yyyy");
    return "${timeFormatter.format(this)} on ${dateFormatter.format(this)}";
  }
}

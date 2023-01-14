import 'package:intl/intl.dart';

extension DurationUtils on Duration {
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

import 'package:video_player/utils/get_video_details.dart';

void main() async {
  final details = await getVideoDetails(
      r"D:\music\Build a responsive website with HTML & CSS  Part one Analyzing the project and setting the stage.mp4");
  print(details?.toJson());
}

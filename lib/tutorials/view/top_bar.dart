import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/models/models.dart';
import 'package:file_picker/file_picker.dart';
import 'package:video_player/tutorials/bloc/tutorials_bloc.dart';

import 'package:video_player/utils/get_video_details.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Tutorials", style: TextStyle(fontSize: 24)),
        const SizedBox(width: 100),
        TextButton(
          onPressed: () {
            FilePicker.platform
                .pickFiles(
              type: FileType.video,
            )
                .then((result) {
              if (result == null ||
                  result.paths.isEmpty ||
                  result.paths[0] == null) {
                return;
              }
              final path = result.paths[0]!;
              getVideoDetails(path).then((details) {
                final tutorial = Tutorial(
                  videoPath: path,
                  lastOpened: DateTime.now(),
                  lastPlayedSeconds: 0,
                  videoDetails: details,
                );
                context
                    .read<TutorialsBloc>()
                    .add(AddTutorial(tutorial: tutorial));
              });
            });
          },
          child: const Text("Add new"),
        ),
      ],
    );
  }
}

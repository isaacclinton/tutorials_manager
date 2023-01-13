import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/models/models.dart';
import 'package:video_player/tutorials/tutorials.dart';
import 'package:video_player/tutorials/view/tutorial_item.dart';
import 'package:video_player/tutorials/view/video_player.dart';
import 'package:video_player/utils/get_video_details.dart';

class TutorialsPage extends StatelessWidget {
  const TutorialsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 30),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TopBar(),
            // const SizedBox(height: 50),
            BlocBuilder<TutorialsBloc, TutorialsState>(
              builder: (context, state1) {
                final state = state1.realState;
                if (state is Loaded) {
                  return Expanded(
                    child: Container(
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: SizedBox(
                          width: 600,
                          child: state.tutorials.isEmpty
                              ? const Padding(
                                  padding: EdgeInsets.only(top: 30),
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Text(
                                      "No tutorial registered",
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                )
                              : ListView.builder(
                                  padding: const EdgeInsets.only(top: 30),
                                  itemCount: state.tutorials.length,
                                  itemBuilder: (context, index) {
                                    final tutorial = state.tutorials[index];
                                    return Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: TutorialItem(
                                        tutorial: tutorial,
                                        onDelete: () {
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return Center(
                                                child: AlertDialog(
                                                  title: const Text(
                                                      "Delete tutorial"),
                                                  content: SizedBox(
                                                    width: 400,
                                                    child: Text(
                                                      "Are you sure you want to delete '${tutorial.videoPath}'?",
                                                    ),
                                                  ),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () {
                                                        context
                                                            .read<
                                                                TutorialsBloc>()
                                                            .add(DeleteTutorial(
                                                                tutorial.id!));

                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      child: const Text("Yes"),
                                                    ),
                                                    TextButton(
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      child: const Text("No"),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        onTap: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) {
                                              print(
                                                  "last played seconds ${tutorial.lastPlayedSeconds}");
                                              return VideoPlayer(
                                                path: tutorial.videoPath,
                                                initialDuration: Duration(
                                                    seconds: tutorial
                                                        .lastPlayedSeconds),
                                                onClosed: (duration) {
                                                  // print("onClosed: $duration");
                                                  context
                                                      .read<TutorialsBloc>()
                                                      .add(SaveTutorial(
                                                        tutorial:
                                                            tutorial.copyWith(
                                                          lastOpened:
                                                              DateTime.now(),
                                                          lastPlayedSeconds: duration
                                                                  ?.inSeconds ??
                                                              tutorial
                                                                  .lastPlayedSeconds,
                                                        ),
                                                      ));
                                                },
                                                onPaused: (duration) {
                                                  // print("onPaused: $duration");
                                                  context
                                                      .read<TutorialsBloc>()
                                                      .add(SaveTutorial(
                                                        tutorial:
                                                            tutorial.copyWith(
                                                          lastOpened:
                                                              DateTime.now(),
                                                          lastPlayedSeconds: duration
                                                                  ?.inSeconds ??
                                                              tutorial
                                                                  .lastPlayedSeconds,
                                                        ),
                                                      ));
                                                },
                                              );
                                            }),
                                          );
                                        },
                                      ),
                                    );
                                  },
                                ),
                        ),
                      ),
                    ),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ],
        ),
      ),
    );
  }
}

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

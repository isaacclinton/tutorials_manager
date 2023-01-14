import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/tutorials/tutorials.dart';
import 'package:video_player/tutorials/view/tutorial_item.dart';
import 'package:video_player/tutorials/view/video_player_page.dart';

import 'delete_tutorial_dialog.dart';
import 'top_bar.dart';

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
                                              return DeleteTutorialDialog(tutorial: tutorial);
                                            },
                                          );
                                        },
                                        onTap: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) {
                                              return VideoPlayerPage(
                                                tutorial: tutorial,
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

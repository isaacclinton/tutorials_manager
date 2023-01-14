import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/models/models.dart';
import 'package:video_player/tutorials/tutorials.dart';

class DeleteTutorialDialog extends StatelessWidget {
  const DeleteTutorialDialog({
    Key? key,
    required this.tutorial,
  }) : super(key: key);

  final Tutorial tutorial;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AlertDialog(
        title: const Text("Delete tutorial"),
        content: SizedBox(
          width: 400,
          child: Text(
            "Are you sure you want to delete '${tutorial.videoPath}'?",
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.read<TutorialsBloc>().add(DeleteTutorial(tutorial.id!));

              Navigator.of(context).pop();
            },
            child: const Text("Yes"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("No"),
          ),
        ],
      ),
    );
  }
}

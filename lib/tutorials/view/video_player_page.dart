import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/models/models.dart';
import 'package:video_player/tutorials/tutorials.dart';
import 'package:video_player/utils/duration_utils.dart';
import 'package:video_player/utils/markdown_utills.dart';

import 'note_view.dart';
import 'video_player.dart';

part 'notes_controller.dart';

class VideoPlayerPage extends StatefulWidget {
  const VideoPlayerPage({
    super.key,
    required this.tutorial,
  });

  final Tutorial tutorial;

  @override
  State<VideoPlayerPage> createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  late final NotesController _notesController;
  late final PlayerController _playerController;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _focusNode = FocusNode();

  @override
  void initState() {
    _playerController = PlayerController();
    _notesController = NotesController(
      initialNotes: widget.tutorial.notes,
      saveNotes: (context, notes) {
        print("Saving notes");
        context.read<TutorialsBloc>().add(SaveTutorial(
              tutorial: widget.tutorial.copyWith(
                notes: notes,
                lastOpened: DateTime.now(),
              ),
            ));
      },
    );
    _notesController.listen(() {
      if (mounted) {
        setState(() {});
      }
      if (_notesController.showNotes) {
        _playerController.pause();
      } else {
        _playerController.play();
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _playerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      autofocus: true,
      focusNode: _focusNode,
      onKey: (node, event) {
        if (event.data.physicalKey == PhysicalKeyboardKey.keyN) {
          if (event.data.isControlPressed) {
            _notesController.toggleNotesView();
          }
        }
        return KeyEventResult.ignored;
      },
      child: Scaffold(
        key: _scaffoldKey,
        endDrawer: _notesController._notes != null
            ? NotesDrawer(
                notes: _notesController._notes!,
                onNoteTapped: (seconds) {
                  Navigator.of(context).pop();
                  _notesController.toggleNotesView();
                },
              )
            : null,
        body: Stack(
          children: [
            VideoPlayer(
              end: _notesController.showNotes
                  ? null
                  : Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            _notesController.toggleNotesView();
                          },
                          icon: const Icon(
                            Icons.note_add,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            _scaffoldKey.currentState?.openEndDrawer();
                          },
                          icon: const Icon(
                            Icons.notes,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
              controller: _playerController,
              path: widget.tutorial.videoPath,
              initialDuration:
                  Duration(seconds: widget.tutorial.lastPlayedSeconds),
              onClosed: (duration) {
                context.read<TutorialsBloc>().add(SaveTutorial(
                      tutorial: widget.tutorial.copyWith(
                        lastOpened: DateTime.now(),
                        lastPlayedSeconds: duration?.inSeconds ??
                            widget.tutorial.lastPlayedSeconds,
                      ),
                    ));
              },
              onPaused: (duration) {
                context.read<TutorialsBloc>().add(SaveTutorial(
                      tutorial: widget.tutorial.copyWith(
                        lastOpened: DateTime.now(),
                        lastPlayedSeconds: duration?.inSeconds ??
                            widget.tutorial.lastPlayedSeconds,
                      ),
                    ));
              },
            ),
            if (_notesController.showNotes)
              Positioned.fill(
                child: Container(
                  color: Colors.black54,
                ),
              ),
            if (_notesController.showNotes)
              Center(
                child: NoteView(
                  duration: _playerController.currentDuration,
                  note: _notesController.getNotesAt(
                    _playerController.currentDuration,
                  ),
                  onDismissed: () {
                    _notesController.toggleNotesView();
                  },
                  onSaved: (note) {
                    _notesController.saveNote(
                      context,
                      _playerController.currentDuration,
                      note,
                    );
                    _notesController.toggleNotesView();
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class NotesDrawer extends StatelessWidget {
  const NotesDrawer({
    Key? key,
    required this.notes,
    required this.onNoteTapped,
  }) : super(key: key);

  final Notes notes;
  final void Function(int durationInSeconds) onNoteTapped;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Title(
              color: Colors.black,
              child: const Text(
                "Notes",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: notes.notes.keys
                  .map<Widget>((e) => NoteItem(
                        note: notes.notes[e]!,
                        duration: Duration(seconds: e),
                        onTap: () {
                          onNoteTapped(e);
                        },
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class NoteItem extends StatelessWidget {
  const NoteItem({
    Key? key,
    required this.note,
    required this.duration,
    required this.onTap,
  }) : super(key: key);

  final Duration duration;
  final String note;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              duration.formal,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              getTitleFromMarkDown(note) ?? "No title",
            ),
          ],
        ),
      ),
    );
  }
}

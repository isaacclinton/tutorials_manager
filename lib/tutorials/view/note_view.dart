import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:video_player/utils/duration_utils.dart';

class NoteView extends StatefulWidget {
  const NoteView({
    Key? key,
    required this.duration,
    required this.onDismissed,
    required this.onSaved,
    this.note,
  }) : super(key: key);

  final Duration duration;
  final Function(String note) onSaved;
  final Function() onDismissed;
  final String? note;

  @override
  State<NoteView> createState() => _NoteViewState();
}

class _NoteViewState extends State<NoteView> {
  late final TextEditingController _textController;

  @override
  void initState() {
    _textController = TextEditingController(text: widget.note);
    _textController.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700,
      child: AlertDialog(
        title: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text("Note at ${widget.duration.formal}"),
        ),
        contentPadding: EdgeInsets.zero,
        actions: [
          ElevatedButton(
            onPressed: () {
              widget.onSaved(_textController.text);
            },
            style: ElevatedButton.styleFrom(
              elevation: 0,
            ),
            child: const Text("Save"),
          ),
          ElevatedButton(
            onPressed: () {
              widget.onDismissed();
            },
            style: ElevatedButton.styleFrom(
              elevation: 0,
            ),
            child: const Text("Cancel"),
          ),
        ],
        content: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                ),
                width: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      color: Colors.grey.shade400,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        "Notes - Markdown",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextFormField(
                          controller: _textController,
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          minLines: null,
                          expands: true,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter your mark down text here",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                ),
                width: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      color: Colors.grey.shade400,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        "Preview",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      child: Markdown(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        data: _textController.text,
                        imageDirectory: "data/images",
                        selectable: true,
                        extensionSet: md.ExtensionSet(
                          md.ExtensionSet.gitHubFlavored.blockSyntaxes,
                          [
                            md.EmojiSyntax(),
                            ...md.ExtensionSet.gitHubFlavored.inlineSyntaxes,
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

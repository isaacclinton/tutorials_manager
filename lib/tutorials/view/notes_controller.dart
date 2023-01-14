part of 'video_player_page.dart';

typedef NotesControllerListener = void Function();

class NotesController {
  NotesController({
    required void Function(BuildContext context, Notes notes) saveNotes,
    this.notesType = NotesType.markdown,
    this.toggleTolerance = const Duration(milliseconds: 200),
    Notes? initialNotes,
  })  : _saveNotes = saveNotes,
        _notes = initialNotes;

  Notes? _notes;
  bool _showNotes = false;
  late final Duration toggleTolerance;
  final NotesType notesType;

  final void Function(BuildContext context, Notes notes) _saveNotes;
  final _listeners = [];

  void listen(NotesControllerListener listener) {
    _listeners.add(listener);
  }

  void _notifyListeners() {
    for (final listener in _listeners) {
      listener();
    }
  }

  String? getNotesAt(Duration currentDuration) {
    return _notes?.notes[currentDuration.inSeconds];
  }

  void saveNote(BuildContext context, Duration duration, String note) {
    final newNotes = _notes?.copyWith(
          notes: {duration.inSeconds: note, ..._notes!.notes},
        ) ??
        Notes(notesType: notesType, notes: {duration.inSeconds: note});
    _saveNotes(context, newNotes);
    _notes = newNotes;
    _notifyListeners();
  }

  DateTime? _lastTimeToggled;

  void toggleNotesView() {
    final now = DateTime.now();

    void toggle() {
      _lastTimeToggled = now;
      _showNotes = !_showNotes;
      _notifyListeners();
    }

    if (_lastTimeToggled == null) {
      toggle();
      return;
    }

    final diffMillis =
        now.millisecondsSinceEpoch - _lastTimeToggled!.millisecondsSinceEpoch;
    if (diffMillis <= toggleTolerance.inMilliseconds) {
      return;
    }
    toggle();
  }

  bool get showNotes {
    return _showNotes;
  }
}

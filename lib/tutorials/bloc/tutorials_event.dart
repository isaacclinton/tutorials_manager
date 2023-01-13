part of 'tutorials_bloc.dart';

@immutable
abstract class TutorialsEvent {
  const TutorialsEvent();
}

class RefreshTutorials extends TutorialsEvent {
  const RefreshTutorials();
}

class DeleteTutorial extends TutorialsEvent {
  const DeleteTutorial(this.tutorialId);
  final String tutorialId;
}

class AddTutorial extends TutorialsEvent {
  const AddTutorial({required this.tutorial});

  final Tutorial tutorial;
}

class SaveTutorial extends TutorialsEvent {
  const SaveTutorial({required this.tutorial});

  final Tutorial tutorial;
}

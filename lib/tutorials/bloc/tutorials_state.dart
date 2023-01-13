part of 'tutorials_bloc.dart';

@immutable
abstract class TutorialsState {
  const TutorialsState();
}

class TutorialsInitial extends TutorialsState {
  const TutorialsInitial();
}

class Loading extends TutorialsState {
  const Loading({
    required this.currentState,
  });

  final TutorialsState currentState;
}

class Loaded extends TutorialsState {
  const Loaded({
    required this.tutorials,
  });

  final List<Tutorial> tutorials;
}

class ErrorState extends TutorialsState {
  const ErrorState({
    required this.error,
    required this.currentState,
  });

  final String error;
  final TutorialsState currentState;
}

extension GetRealState on TutorialsState {
  TutorialsState get realState {
    if (this is Loading) {
      return (this as Loading).currentState;
    }
    if (this is ErrorState) {
      return (this as ErrorState).currentState;
    }
    return this;
  }
}

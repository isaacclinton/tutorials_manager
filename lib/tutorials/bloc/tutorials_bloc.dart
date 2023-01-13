import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:storage_api/storage_api.dart';
import 'package:video_player/models/models.dart';

part 'tutorials_event.dart';
part 'tutorials_state.dart';
part 'tutorials_repository.dart';

class TutorialsBloc extends Bloc<TutorialsEvent, TutorialsState> {
  TutorialsBloc({required TutorialsRepository tutorialsRepository})
      : _tutorialsRepository = tutorialsRepository,
        super(const TutorialsInitial()) {
    on<RefreshTutorials>(_refreshTutorials);
    on<DeleteTutorial>(_deleteTutorial);
    on<AddTutorial>(_addTutorial);
    on<SaveTutorial>(_saveTutorial);
  }

  final TutorialsRepository _tutorialsRepository;

  FutureOr<void> _refreshTutorials(
    RefreshTutorials event,
    Emitter<TutorialsState> emit,
  ) async {
    final currentState = state.realState;
    emit(Loading(currentState: currentState));
    final tutorials = await _tutorialsRepository.getTutorials();
    emit(Loaded(tutorials: tutorials));
  }

  FutureOr<void> _deleteTutorial(
    DeleteTutorial event,
    Emitter<TutorialsState> emit,
  ) async {
    final currentState = state.realState;
    emit(Loading(currentState: currentState));
    await _tutorialsRepository.deleteTutorial(event.tutorialId);
    final tutorials = await _tutorialsRepository.getTutorials();
    emit(Loaded(tutorials: tutorials));
  }

  FutureOr<void> _addTutorial(
    AddTutorial event,
    Emitter<TutorialsState> emit,
  ) async {
    assert(event.tutorial.id == null);
    final currentState = state.realState;
    emit(Loading(currentState: currentState));
    await _tutorialsRepository.addTutorial(event.tutorial);
    final tutorials = await _tutorialsRepository.getTutorials();
    emit(Loaded(tutorials: tutorials));
  }

  FutureOr<void> _saveTutorial(
    SaveTutorial event,
    Emitter<TutorialsState> emit,
  ) async {
    assert(event.tutorial.id != null);
    final currentState = state.realState;
    emit(Loading(currentState: currentState));
    await _tutorialsRepository.saveTutorial(event.tutorial);
    final tutorials = await _tutorialsRepository.getTutorials();
    emit(Loaded(tutorials: tutorials));
  }
}

import 'package:dart_vlc/dart_vlc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_storage_api/local_storage_api.dart';
import 'package:video_player/tutorials/tutorials.dart';

void main() async {
  // for video player
  DartVLC.initialize();
  runApp(DartVLCExample(
    tutorialsStorageApi: LocalStorageApi(path: "data/tutorials"),
  ));
}

class DartVLCExample extends StatelessWidget {
  const DartVLCExample({
    Key? key,
    required this.tutorialsStorageApi,
  }) : super(key: key);

  final StorageApi tutorialsStorageApi;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => TutorialsRepository(
        storageApi: tutorialsStorageApi,
      ),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => TutorialsBloc(
              tutorialsRepository: context.read(),
            )..add(const RefreshTutorials()),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            textTheme: GoogleFonts.robotoFlexTextTheme(),
          ),
          home: const TutorialsPage(),
        ),
      ),
    );
  }
}

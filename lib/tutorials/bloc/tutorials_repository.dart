part of 'tutorials_bloc.dart';

String generateRandomString(int len) {
  final r = Random();
  const chars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  return List.generate(len, (index) => chars[r.nextInt(chars.length)]).join();
}

Map<String, dynamic> getTutorialJson(Tutorial tutorial) {
  final json = tutorial.toJson();
  if (tutorial.videoDetails != null) {
    final detailsJson = tutorial.videoDetails!.toJson();
    if (tutorial.videoDetails!.size != null) {
      detailsJson["size"] = tutorial.videoDetails!.size!.toJson();
    }
    json["videoDetails"] = detailsJson;
  }
  if (tutorial.notes != null) {
    json["notes"] = tutorial.notes?.toJson();
  }
  return json;
}

class TutorialsRepository {
  const TutorialsRepository({required StorageApi storageApi})
      : _storageApi = storageApi;

  final StorageApi _storageApi;

  Future<List<Tutorial>> getTutorials() async {
    final keys = await _storageApi.getKeys();
    final toReturn = <Tutorial>[];
    for (final key in keys) {
      final tutorialJson = await _storageApi.getValue(key);
      final tutorial = Tutorial.fromJson(
        jsonDecode(jsonEncode(Map.from(tutorialJson))),
      );
      toReturn.add(tutorial);
    }
    return toReturn;
  }

  Future<void> deleteTutorial(String tutorialId) async {
    await _storageApi.delete(tutorialId);
  }

  Future<void> addTutorial(Tutorial tutorial) async {
    late String id;
    await Future.doWhile(() async {
      final newId = generateRandomString(10);
      if (await _storageApi.getValue(newId) != null) {
        return true;
      }
      id = newId;
      return false;
    });

    final json = getTutorialJson(tutorial.copyWith(id: id));

    await _storageApi.setValue(id, json);
  }

  Future<void> saveTutorial(Tutorial tutorial) async {
    await _storageApi.setValue(tutorial.id!, getTutorialJson(tutorial));
  }
}

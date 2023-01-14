String? getTitleFromMarkDown(String markdown) {
  final regex = RegExp(r"\W*# *(.*)\W*\n");
  final match = regex.firstMatch(markdown);
  return match?.group(1);
}

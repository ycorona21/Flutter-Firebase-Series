// Ejemplo de modelo de novela
class Novel {
  String title;
  String description;
  List<Chapter> chapters;

  Novel(
      {required this.title, required this.description, required this.chapters});
}

class Chapter {
  String title;
  String content;

  Chapter({required this.title, required this.content});
}

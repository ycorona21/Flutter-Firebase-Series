// Ejemplo de controlador
import '../model/novel_model.dart';

class NovelController {
  Novel _currentNovel;

  NovelController(this._currentNovel);

  Novel get currentNovel => _currentNovel;

  void loadNovel(String novelId) {
    // Lógica para cargar la novela desde la fuente de datos
    // Actualizar _currentNovel y notificar a las vistas
  }

  void loadChapter(String chapterId) {
    // Lógica para cargar un capítulo específico
    // Notificar a las vistas
  }
}

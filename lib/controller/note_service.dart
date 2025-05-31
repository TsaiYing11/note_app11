import 'package:note_app11/model/note.dart';

class NoteService{
  List<Note> _notes = [
    Note(
      tilte: '📌 Regularization Techniques in Deep Learning',
      descripion:
      'Brief overview of L1, L2, and dropout to prevent overfitting.',
      dateTime: DateTime.now().subtract(const Duration(days: 1)),
    ),
    Note(
      tilte: '🧠 Difference Between Memory and Registers',
      descripion:
      'Registers are faster and smaller; memory stores larger data.',
      dateTime: DateTime.now().subtract(const Duration(days: 2)),
    ),
    Note(
      tilte: '🔍 Common Git Errors and Fixes',
      descripion: 'Covers merge conflicts, detached HEAD, and push issues.',
      dateTime: DateTime.now().subtract(const Duration(days: 3)),
    ),
    Note(
      tilte: '🎯 Implementing Animations in Flutter',
      descripion: 'Simple guide to use AnimatedContainer and Tween.',
      dateTime: DateTime.now().subtract(const Duration(days: 4)),
    ),
    Note(
      tilte: '🛠️ Writing a Simple Web Scraper with Python',
      descripion: 'Uses requests and BeautifulSoup to extract web data.',
      dateTime: DateTime.now().subtract(const Duration(days: 5)),
    ),
  ];

  List <Note> get notes => _notes;
  //List型別 Note物件 notes回傳_notes

  void deleteNote({required int index}){
    _notes.removeAt(index);
  }
}


import 'constants.dart';
import 'package:flutter/material.dart';
import 'components/note_card.dart';
import 'package:note_app11/controller/note_service.dart';

void main() => runApp(MaterialApp(theme: ThemeData.dark(), home: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'with teammate',
      theme: ThemeData.dark(),
      home: HomePage(),
      routes: <String, WidgetBuilder>{'/add_note': (_) => AddNote()},
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final NoteService noteService = NoteService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder:
                (BuildContext context) => AlertDialog(
              title: TextField(onChanged: (value) {}),
              content: TextField(onChanged: (value) {}),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(title: const Text('Flutter Week 3')),
      body: ListView.builder(
        itemCount: noteService.notes.length,
        itemBuilder: (context, index) {
          return NoteCard(
            note: noteService.notes[index],
            color: colorPool[index % colorPool.length],
            onPressed: () {
              setState(() {
                noteService.deleteNote(index:index);
              });
            },
          );
        },
      ),
    );
  }
}
class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('add_note'),),
      body: Column(

      ),

    );
  }
}



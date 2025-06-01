import 'constants.dart';
import 'package:flutter/material.dart';
import 'package:note_app11/controller/note_service.dart';
import 'package:note_app11/components/note_card.dart';

void main() => runApp(MaterialApp(theme: ThemeData.dark(), home: MyApp()));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

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
                noteService.deleteNote(index: index);
              });
            },
          );
        },
      ),
    );
  }
}

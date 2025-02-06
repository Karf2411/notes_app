import 'package:flutter/material.dart';
import 'package:notes_app/Views/home_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes',
      theme: ThemeData(
          brightness: Brightness.light,
          scaffoldBackgroundColor: const Color.fromARGB(148, 29, 28, 28)),
      home: const HomeView(),
    );
  }
}

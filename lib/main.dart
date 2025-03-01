import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:notes_app/Views/home_view.dart';

void main() {
  runApp(const NotesApp());
  debugPaintSizeEnabled = false;
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes',
      theme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: const Color.fromARGB(148, 29, 28, 28)),
      home: const HomeView(),
    );
  }
}

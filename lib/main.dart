import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:notes_app/Views/home_view.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/helper/const.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
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

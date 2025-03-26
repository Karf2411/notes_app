import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/cubi_observer.dart';
import 'package:notes_app/Cubits/read_notes_cubits/read_notes_cubit.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/Views/home_view.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/helper/const.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = CubiObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(const NotesApp());
  debugPaintSizeEnabled = false;
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReadNotesCubit(),
      child: MaterialApp(
        title: 'Notes',
        theme: ThemeData(
            brightness: Brightness.dark,
            scaffoldBackgroundColor: const Color.fromARGB(148, 29, 28, 28)),
        home: const HomeView(),
      ),
    );
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/Cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/helper/const.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  var noteBox = Hive.box<NoteModel>(kNotesBox);
  void addNote(NoteModel note) {
    noteBox.add(note);
    emit(AddNoteSuccess());
  }
}

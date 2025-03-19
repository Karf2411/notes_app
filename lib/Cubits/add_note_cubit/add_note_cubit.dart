import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/Cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/helper/const.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  var noteBox = Hive.box(kNotesBox);
  void addNote(var note) {
    emit(AddNoteLoading());
    try {
      noteBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteInitial());
    }
  }
}

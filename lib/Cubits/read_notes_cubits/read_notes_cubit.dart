import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/Cubits/read_notes_cubits/read_notes_states.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/helper/const.dart';

class ReadNotesCubit extends Cubit<ReadNotesStates> {
  ReadNotesCubit() : super(ReadNotesStates());

  List<NoteModel> notes = [];
  void fetchAllNotes() {
    var box = Hive.box<NoteModel>(kNotesBox);
    notes = box.values.toList();
    emit(ReadNotesSuccessState());
  }
}

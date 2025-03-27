import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/read_notes_cubits/read_notes_cubit.dart';
import 'package:notes_app/Cubits/read_notes_cubits/read_notes_states.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/Widgets/custom_note.dart';

class NotesList extends StatelessWidget {
  const NotesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<ReadNotesCubit, ReadNotesStates>(
        builder: (context, state) {
          List<NoteModel> notes =
              BlocProvider.of<ReadNotesCubit>(context).notes;

          return ListView.builder(
            itemCount: notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return CustomNote(
                note: notes[index],
              );
            },
          );
        },
      ),
    );
  }
}

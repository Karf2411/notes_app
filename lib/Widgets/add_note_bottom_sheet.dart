import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/Cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/Cubits/read_notes_cubits/read_notes_cubit.dart';
import 'package:notes_app/Widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom,
        right: 16,
      ),
      child: BlocProvider(
        lazy: false,
        create: (context) => AddNoteCubit(),
        child: BlocListener<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            BlocProvider.of<ReadNotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          },
          child: const AddNoteForm(),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/read_notes_cubits/read_notes_cubit.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/Widgets/custom_appbar.dart';
import 'package:notes_app/Widgets/custom_textfield.dart';

class EditNoteView extends StatelessWidget {
  EditNoteView({super.key, required this.note});
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final NoteModel note;
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    controller1.text = note.title;
    controller2.text = note.content;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 16, bottom: 8, right: 16),
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: formKey,
          child: Column(
            children: [
              CustomAppBar(
                title: 'Edit Note',
                icon: Icons.check,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    note.title = controller1.text;
                    note.content = controller2.text;
                    note.save();
                    BlocProvider.of<ReadNotesCubit>(context).fetchAllNotes();
                    Navigator.pop(context);
                  }
                },
              ),
              CustomTextField(
                controller: controller1,
                hintText: 'Title',
                maxLine: 1,
                fontSize: 20,
              ),
              const SizedBox(height: 16),
              CustomTextField(
                controller: controller2,
                hintText: 'Content',
                maxLine: 7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/Widgets/custom_button.dart';
import 'package:notes_app/Widgets/custom_textfield.dart';
import 'package:notes_app/helper/const.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: ListView(
        shrinkWrap: true,
        children: [
          const SizedBox(
            height: 30,
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
          const SizedBox(
            height: 60,
          ),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                NoteModel note = NoteModel(
                    title: controller1.text,
                    content: controller2.text,
                    date: DateTime.now().toString(),
                    color: kPrimary.value);
                BlocProvider.of<AddNoteCubit>(context).addNote(note);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

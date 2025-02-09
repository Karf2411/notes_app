import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/custom_appbar.dart';
import 'package:notes_app/Widgets/custom_textfield.dart';

class AddNoteView extends StatelessWidget {
  AddNoteView({super.key});
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 16, bottom: 8, right: 16),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              CustomAppBar(
                title: 'Add Note',
                icon: Icons.check,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pop(context);
                  }
                },
              ),
              const CustomTextField(
                hintText: 'Title',
                maxLine: 1,
                fontSize: 20,
              ),
              const SizedBox(height: 16),
              const CustomTextField(
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

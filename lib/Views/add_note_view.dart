import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/custom_appbar.dart';
import 'package:notes_app/Widgets/custom_textfield.dart';

class AddNoteView extends StatelessWidget {
  const AddNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 50, left: 16, bottom: 8, right: 16),
        child: Column(
          children: [
            CustomAppBar(title: 'Add Note', icon: Icons.check),
            CustomTextField(
              hintText: 'Title',
              maxLine: 1,
              fontSize: 20,
            ),
            SizedBox(height: 16),
            CustomTextField(
              hintText: 'Content',
              maxLine: 7,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/custom_note.dart';

class NotesList extends StatelessWidget {
  const NotesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return const CustomNote();
        },
      ),
    );
  }
}

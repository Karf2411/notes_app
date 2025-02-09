import 'package:flutter/material.dart';
import 'package:notes_app/Views/add_note_view.dart';
import 'package:notes_app/Widgets/custom_appbar.dart';
import 'package:notes_app/Widgets/notes_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Padding(
        padding: EdgeInsets.only(top: 50, left: 16, bottom: 8, right: 16),
        child: Column(
          children: [
            CustomAppBar(title: 'Notes', icon: Icons.search),
            NotesList(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        backgroundColor: Colors.lightBlue,
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AddNoteView(),
          ),
        ),
        child: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}

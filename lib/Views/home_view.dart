import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/custom_appbar.dart';
import 'package:notes_app/Widgets/notes_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 50, left: 16, bottom: 8, right: 16),
        child: Column(
          children: [
            CustomAppBar(title: 'Notes', icon: Icons.search),
            NotesList(),
          ],
        ),
      ),
    );
  }
}

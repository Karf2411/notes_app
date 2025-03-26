import 'package:flutter/material.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/Views/edit_view.dart';

class CustomNote extends StatelessWidget {
  const CustomNote({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => EditNoteView(),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.black12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              isThreeLine: true,
              title: Padding(
                padding: const EdgeInsets.only(bottom: 16, top: 10),
                child: Text(
                  note.title,
                  style: const TextStyle(
                    fontSize: 24,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              subtitle: Text(
                note.content,
                style: const TextStyle(fontSize: 16),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Icon(
                    Icons.delete,
                    size: 35,
                  ),
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 30, bottom: 30),
              child: Text(
                note.date,
                style: const TextStyle(fontSize: 13),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

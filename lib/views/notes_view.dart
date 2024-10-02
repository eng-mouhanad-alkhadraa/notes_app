import 'package:flutter/material.dart';

import 'package:notes_app/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 60, right: 280),
        child: Container(
          height: 70,
          width: 70,
          child: FloatingActionButton(
            foregroundColor: Colors.blue,
            backgroundColor: Colors.white,
            elevation: 0,
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                context: context,
                builder: (context) {
                  return const AddNoteBottomSheet();
                },
              );
            },
            child: const Icon(Icons.create,
                size: 34, color: Colors.blue), 
          ),
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}

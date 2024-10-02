import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';

class DeleteConfirmationDialog extends StatelessWidget {
  const DeleteConfirmationDialog({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'تأكيد الحذف',
      ),
      content: Text(
        'هل أنت متأكد أنك تريد حذف هذه الملاحظة؟',
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            'إلغاء',
            style: TextStyle(fontSize: 20),
          ),
        ),
        TextButton(
          onPressed: () {
            note.delete();
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.of(context).pop();
          },
          child: Text(
            'تأكيد',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:notes_app/models/Note_Model.dart';
import 'package:notes_app/widgets/Edit_Note_View_Body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(note: note,),
    );
  }
}

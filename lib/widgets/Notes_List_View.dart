import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/Note_Model.dart';
import 'package:notes_app/widgets/Custom_Note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes=BlocProvider.of<NotesCubit>(context).notes??[];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: ListView.builder(itemCount: notes.length,
            itemBuilder: (Context, index) {
            
            Padding(padding: EdgeInsets.zero);
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: NoteItem(note:notes[index]),
            );
          }),
        );
      },
    );
  }
}

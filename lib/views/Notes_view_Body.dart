import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Custom_App_Bar.dart';
import 'package:notes_app/widgets/Custom_Note_item.dart';
import 'package:notes_app/widgets/Notes_List_View.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children:  [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Notes',
            icon: Icons.search,
            onPressed: (){},
          ),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}

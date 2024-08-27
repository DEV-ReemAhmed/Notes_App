import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Custom_Search_Icon.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar(
      {super.key, required this.title, required this.icon, this.onPressed});
  final IconData icon;
  final String title;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        Spacer(),
        Center(
          child: CustomSearchIcon(
            onPressed: onPressed,
            icon: icon,
          ),
        ),
      ],
    );
  }
}

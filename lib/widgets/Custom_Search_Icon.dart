import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  CustomSearchIcon({super.key, required this.icon, this.onPressed});
  final IconData icon;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 34,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color.fromARGB(255, 71, 68, 68),
      ),
      child: Center(
        child: IconButton(
          onPressed: onPressed,
          icon: Center(child: Center(child: Icon(icon))),
        ),
      ),
    );
  }
}

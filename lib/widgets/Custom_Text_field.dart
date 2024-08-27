import 'package:flutter/material.dart';
import 'package:notes_app/Constants.dart';

class CustomTextfield extends StatelessWidget {
   CustomTextfield({required this.hint, this.MaxLines = 1, this.onSaved,this.onChanged});
Function(String)? onChanged;
  final String hint;
  final int MaxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty??true) {
          return 'Field is required';
        }
      },
      cursorColor: KprimaryColor,
      maxLines: MaxLines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: KprimaryColor),
        border: BuildBorder(),
        enabledBorder: BuildBorder(),
        focusedBorder: BuildBorder(KprimaryColor),
      ),
    );
  }

  OutlineInputBorder BuildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}

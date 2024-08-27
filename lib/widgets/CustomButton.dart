import 'package:flutter/material.dart';
import 'package:notes_app/Constants.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, this.onTap, required bool isLoading});
  void Function()? onTap;
  final bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
            color: KprimaryColor, borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: isLoading
              ? SizedBox(width: 24,height: 24,
                child: const CircularProgressIndicator(
                    color: Colors.white,
                  ),
              )
              : const Text(
                  'Add',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
        ),
      ),
    );
  }
}

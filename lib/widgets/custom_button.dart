import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.text, this.onTap});
  String text;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(16),
        ),
        width: 175,
        height: 60,
        child: Center(
            child: Text(
          text,
          style: const TextStyle(fontSize: 24, color: Colors.white,fontFamily:'myfont' ),
        )),
      ),
    );
  }
}

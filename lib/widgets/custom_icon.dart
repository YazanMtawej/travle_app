import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon(
      {super.key, required this.icon, this.onPressed, required this.size});
  final IconData icon;
  final double size;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(.2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: IconButton(
            color: Colors.orange,
            hoverColor: Colors.orange[200],
            highlightColor: Colors.orangeAccent,
            onPressed: onPressed,
            icon: Icon(
              icon,
              size: size,
            )),
      ),
    );
  }
}

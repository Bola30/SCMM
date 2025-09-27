
import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({
    super.key,
    this.onPressed,
    this.alignment = Alignment.centerRight,
    this.backgroundColor = const Color(0xFF1C77FD),
    this.icon = Icons.add,
    this.iconColor = Colors.white,
    this.size = 20.0, // mini FAB size
  });

  final VoidCallback? onPressed;
  final Alignment alignment;
  final Color backgroundColor;
  final IconData icon;
  final Color iconColor;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: FloatingActionButton(
        mini: true,
        backgroundColor: backgroundColor,
        onPressed: onPressed,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(size),
        ),
        child: Icon(
          icon,
          color: iconColor,
        ),
      ),
    );
  }
}
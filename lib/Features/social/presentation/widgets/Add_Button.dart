
import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({
    super.key,
    this.onPressed,
    this.alignment = Alignment.centerRight,
    this.backgroundColor = const Color(0xFF1C77FD),
    this.icon = Icons.add,
    this.iconColor = Colors.white,
  });

  final VoidCallback? onPressed;
  final Alignment alignment;
  final Color backgroundColor;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 35,
          width: 35,
          child: FloatingActionButton(
            
            backgroundColor: backgroundColor,
            onPressed: onPressed,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius:BorderRadius.circular(20),
            ),
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
        ),
      ],
    );
  }
}
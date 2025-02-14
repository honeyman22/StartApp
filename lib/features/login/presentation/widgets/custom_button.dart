import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final double width;
  final double height;
  final double borderRadius;
  final IconData? icon; // Optional icon

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.backgroundColor,
    required this.textColor,
    required this.width,
    required this.height,
    required this.borderRadius,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor, // ✅ Set background color
          foregroundColor: textColor,
          // ✅ Set text/icon color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[
              Icon(icon, color: textColor), // ✅ Ensure icon color is visible
              SizedBox(width: 8), // ✅ Increase spacing for better alignment
            ],
            Text(
              text,
              style: TextStyle(color: textColor), // ✅ Ensure text is visible
            ),
          ],
        ),
      ),
    );
  }
}

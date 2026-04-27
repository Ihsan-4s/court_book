import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String textButton;
  final VoidCallback onPressed;
  final double heightButton;
  final double widthButton;
  final double fontSize;

  const CustomButton({
    super.key,
    required this.textButton,
    required this.onPressed,
    this.heightButton = 50,
    this.widthButton = double.infinity,
    this.fontSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightButton,
      width: widthButton,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(15),
          ),
        ),
        child: Text(
          textButton,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

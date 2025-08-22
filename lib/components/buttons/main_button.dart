import 'package:flutter/material.dart';
import 'package:nectar/core/utils/app_colors.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.text,
    this.onChanged,
    this.width,
    this.height,
    this.bgColor,
  });
  final String text;
  final Function()? onChanged;
  final double? width;
  final double? height;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: bgColor ?? AppColors.primaryColor,
          foregroundColor: Colors.white,
        ),
        onPressed: onChanged,
        child: Text(
          text,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}

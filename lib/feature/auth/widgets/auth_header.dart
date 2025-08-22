import 'package:flutter/material.dart';
import 'package:nectar/core/utils/app_colors.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({super.key , required this.textHeader , required this.textPararaph});
  final String textHeader;
  final String textPararaph;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
         textHeader,
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
        ),
        Text(
          textPararaph,
          style: TextStyle(fontSize: 16, color: AppColors.greyColor),
        ),
      ],
    );
  }
}

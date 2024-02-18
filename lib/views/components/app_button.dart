import 'package:flutter/material.dart';
import 'package:monkeylogin/utils/theme/app_theme.dart';

class AppButton extends StatelessWidget {
  final Function()? onPressed;
  final String title;
  const AppButton({
    super.key,
    this.onPressed,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.deepPurple.shade400,
        borderRadius: BorderRadius.circular(
          10.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8.5,
          horizontal: 50.0,
        ),
        child: Text(
          title,
          style: AppTextStyles.hintTextStyle.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

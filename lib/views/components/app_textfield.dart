import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monkeylogin/utils/theme/app_theme.dart';

class AppTextField extends StatefulWidget {
  final String hintText;
  final IconData prefixIcon;
  final TextEditingController controller;
  final bool isPasswordField;
  final Function()? onTap;
  const AppTextField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    required this.controller,
    this.isPasswordField = false,
    this.onTap,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool isObscured = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: isObscured,
      onTap: widget.onTap,
      decoration: InputDecoration(
        hintText: widget.hintText,
        prefixIcon: Icon(
          widget.prefixIcon,
          color: const Color.fromARGB(184, 52, 51, 51),
          size: 20.0,
        ),
        suffixIcon: widget.isPasswordField
            ? InkWell(
                onTap: () {
                  setState(() {
                    isObscured = !isObscured;
                  });
                },
                child: Icon(
                  isObscured ? CupertinoIcons.eye : CupertinoIcons.eye_slash,
                  size: 18.0,
                  color: const Color.fromARGB(184, 52, 51, 51),
                ),
              )
            : null,
        isCollapsed: true,
        filled: true,
        fillColor: Colors.amber[200],
        hintStyle: AppTextStyles.hintTextStyle,
        contentPadding: const EdgeInsets.all(
          10.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            15,
          ),
        ),
      ),
    );
  }
}

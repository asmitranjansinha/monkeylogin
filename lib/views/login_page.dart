import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:monkeylogin/controllers/login_controller.dart';
import 'package:monkeylogin/utils/assets/app_assets.dart';
import 'package:monkeylogin/utils/theme/app_theme.dart';
import 'package:monkeylogin/views/components/app_button.dart';
import 'package:monkeylogin/views/components/app_textfield.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailTextController = TextEditingController();

  final passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final loginController = Provider.of<LoginController>(context);
    return Scaffold(
      backgroundColor: AppColors.scaffoldBgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              Container(
                height: 250.0,
                width: 250.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(60 / 2),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(60 / 2),
                  child: Lottie.asset(
                    height: loginController.loginAnimationAsset ==
                            AppAnimations.monkeyPassword
                        ? 100
                        : 250.0,
                    width: loginController.loginAnimationAsset ==
                            AppAnimations.monkeyPassword
                        ? 100
                        : 250.0,
                    loginController.loginAnimationAsset,
                  ),
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              AppTextField(
                controller: emailTextController,
                hintText: 'Email',
                prefixIcon: CupertinoIcons.mail,
                onTap: () {
                  loginController.loginAnimationAsset =
                      AppAnimations.monkeyEmail;
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              AppTextField(
                controller: passwordTextController,
                hintText: 'Password',
                prefixIcon: CupertinoIcons.lock_circle,
                isPasswordField: true,
                onTap: () {
                  loginController.loginAnimationAsset =
                      AppAnimations.monkeyPassword;
                },
              ),
              const SizedBox(
                height: 40.0,
              ),
              const AppButton(
                title: 'Login',
              )
            ],
          ),
        ),
      ),
    );
  }
}

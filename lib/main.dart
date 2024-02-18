import 'package:flutter/material.dart';
import 'package:monkeylogin/controllers/login_controller.dart';
import 'package:monkeylogin/utils/consts/app_constants.dart';
import 'package:monkeylogin/views/login_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => LoginController(),
    ),
  ], child: const MonkeyLogin()));
}

class MonkeyLogin extends StatelessWidget {
  const MonkeyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

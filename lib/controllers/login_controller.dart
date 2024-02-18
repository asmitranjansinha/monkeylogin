import 'package:flutter/material.dart';
import 'package:monkeylogin/utils/assets/app_assets.dart';

class LoginController extends ChangeNotifier {
  String _loginAnimationAsset = AppAnimations.monkeyEmail;

  String get loginAnimationAsset => _loginAnimationAsset;

  set loginAnimationAsset(String val) {
    _loginAnimationAsset = val;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:siejkowska_m_task/common/shared_preferences.dart';
import 'package:siejkowska_m_task/common/shared_preferences_constants.dart';

class LoginState extends ChangeNotifier {
  final String _email = '';
  final String _password = '';

  String get email => _email;

  String get password => _password;

  void setPassword(String password) {
    SharedPreferencesHelpers.setStringValue(
        SharedPreferencesConstants.password, password);
  }

  void setEmail(String email) {
    SharedPreferencesHelpers.setStringValue(
        SharedPreferencesConstants.email, email);
  }
}

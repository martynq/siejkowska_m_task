import 'package:email_validator/email_validator.dart' as email;
import 'package:flutter/material.dart';
import 'package:siejkowska_m_task/common/input_field.dart';
import 'package:siejkowska_m_task/common/task_button.dart';
import 'package:siejkowska_m_task/common/task_strings.dart';
import 'package:siejkowska_m_task/features/countries/data/countries_provider.dart';
import 'package:siejkowska_m_task/features/countries/presentation/countries_list_screen.dart';
import 'package:siejkowska_m_task/features/login/data/login_provider.dart';

class LoginPage extends StatefulWidget {
  final CountriesState countriesState;
  final LoginState loginState;

  const LoginPage({
    Key? key,
    required this.countriesState,
    required this.loginState,
  }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();
  final _emailFormKey = GlobalKey<FormState>();
  final _passwordFormKey = GlobalKey<FormState>();

  bool emailIsValid = false;
  bool passwordIsValid = false;

  bool validateStructure(String value) {
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InputField(
              formKey: _emailFormKey,
              focusNode: emailFocusNode,
              controller: _emailController,
              hintText: TaskStrings.email,
              onChanged: (name) {
                setState(() {
                  emailIsValid =
                      _emailFormKey.currentState?.validate() ?? false;
                });
              },
              validator: (value) => email.EmailValidator.validate(value ?? ''),
              validatorInfo: TaskStrings.emailInfo,
            ),
            const SizedBox(
              height: 20,
            ),
            InputField(
              formKey: _passwordFormKey,
              focusNode: passwordFocusNode,
              controller: _passwordController,
              hintText: TaskStrings.password,
              onChanged: (name) {
                setState(() {
                  passwordIsValid =
                      _passwordFormKey.currentState?.validate() ?? false;
                });
              },
              validator: (value) => validateStructure(value ?? ''),
              validatorInfo: TaskStrings.passwordInfo2,
            ),
            !passwordIsValid && _passwordController.text.isNotEmpty
                ? const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 3),
                    child: Text(
                      TaskStrings.passwordInfo,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 10,
                      ),
                    ),
                  )
                : const SizedBox.shrink(),
            const SizedBox(
              height: 20,
            ),
            TaskButton(
              TaskStrings.logIn,
              disabled: !emailIsValid && !passwordIsValid,
              onPressed: () {
                widget.loginState.setEmail(_emailController.text);
                widget.loginState.setPassword(_passwordController.text);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CountriesListScreen(
                      list: widget.countriesState.countryList,
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

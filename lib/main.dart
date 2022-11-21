import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:siejkowska_m_task/common/shared_preferences.dart';
import 'package:siejkowska_m_task/common/shared_preferences_constants.dart';
import 'package:siejkowska_m_task/features/countries/data/countries_provider.dart';
import 'package:siejkowska_m_task/features/login/data/login_provider.dart';
import 'package:siejkowska_m_task/features/login/presentation/logged_screen.dart';
import 'package:siejkowska_m_task/features/login/presentation/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final email = await SharedPreferencesHelpers.getStringValue(
          SharedPreferencesConstants.email) ??
      '';
  final password = await SharedPreferencesHelpers.getStringValue(
          SharedPreferencesConstants.password) ??
      '';

  runApp(MyApp(
    isLoggedIn: (email.isNotEmpty && password.isNotEmpty),
  ));
}

class MyApp extends StatefulWidget {
  final bool isLoggedIn;

  const MyApp({
    Key? key,
    required this.isLoggedIn,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CountriesState(),
        ),
        ChangeNotifierProvider(
          create: (context) => LoginState(),
        ),
      ],
      child: MaterialApp(
        home: widget.isLoggedIn
            ? LoggedScreen(
                countriesState: CountriesState(),
                loginState: LoginState(),
              )
            : LoginPage(
                countriesState: CountriesState(),
                loginState: LoginState(),
              ),
      ),
    );
  }
}

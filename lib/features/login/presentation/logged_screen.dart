import 'package:flutter/material.dart';
import 'package:siejkowska_m_task/common/task_button.dart';
import 'package:siejkowska_m_task/common/task_strings.dart';
import 'package:siejkowska_m_task/features/countries/data/countries_provider.dart';
import 'package:siejkowska_m_task/features/countries/presentation/countries_list_screen.dart';
import 'package:siejkowska_m_task/features/login/data/login_provider.dart';
import 'package:siejkowska_m_task/features/login/presentation/login_screen.dart';

class LoggedScreen extends StatelessWidget {
  final CountriesState countriesState;
  final LoginState loginState;

  const LoggedScreen({
    Key? key,
    required this.countriesState,
    required this.loginState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
            ),
            const Text(
              TaskStrings.helloAgain,
              style: TextStyle(fontSize: 40),
            ),
            const SizedBox(
              height: 10,
            ),
            TaskButton(
              TaskStrings.lookToOurDatabase,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CountriesListScreen(
                      list: countriesState.countryList,
                    ),
                  ),
                );
              },
            ),
            const Spacer(),
            TaskButton(
              TaskStrings.logOut,
              onPressed: () {
                loginState.setEmail('');
                loginState.setPassword('');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(
                      countriesState: countriesState,
                      loginState: loginState,
                    ),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

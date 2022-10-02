import 'package:flutter/material.dart';
import 'package:medical_app/pages/loginScreen.dart';
import 'package:medical_app/pages/registerScreen.dart';

class AuthNavigator extends StatefulWidget {
  const AuthNavigator({ Key? key }) : super(key: key);

  @override
  State<AuthNavigator> createState() => _AuthNavigatorState();
}
GlobalKey<NavigatorState> _authNavigatorKey = GlobalKey<NavigatorState>();

class _AuthNavigatorState extends State<AuthNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _authNavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case '/':
                  return const LoginScreen();
                case '/register':
                  return const RegisterScreen();
              }
              return Container();
            });
      },
    );
  }
}
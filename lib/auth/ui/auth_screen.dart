import 'package:diplom_main/Views/mainMenu.dart';
import 'package:flutter/material.dart';

import 'components/auth_builder.dart';
import 'login_screen.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthBuilder(
      isNotAuthorized: (context) => LoginScreen(),
      isWaiting: (context) => const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
      isAuthorized: (context, userEntity, child) => HomePage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../domain/auth_state/auth_cubit.dart';
import 'components/app_button.dart';
import 'components/app_text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final controllerLogin = TextEditingController();
  final controllerPassword = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Войти"),
      ),
      body: Form(
        key: formKey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppTextField(
                  controller: controllerLogin,
                  labelText: "логин",
                ),
                const SizedBox(height: 16),
                AppTextField(
                  controller: controllerPassword,
                  labelText: "пароль",
                  obscureText: true,
                ),
                const SizedBox(height: 16),
                AppButton(
                  onPressed: () {
                    if (formKey.currentState?.validate() == true) {
                      _onTapToSignIn(context.read<AuthCubit>());
                    }
                  },
                  child: const Text(
                    'Войти',
                  ),
                ),
                const SizedBox(height: 16),
                AppButton(
                  isFixedSize: false,
                  backgroundColor: Colors.grey,
                  onPressed: () {
                    Navigator.of(context).pushNamed('/register');
                  },
                  child: const Text(
                    'Регистрация',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTapToSignIn(AuthCubit authCubit) => authCubit.signIn(
        email: controllerLogin.text,
        password: controllerPassword.text,
      );
}

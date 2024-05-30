
import 'package:diplom_main/auth/domain/auth_state/auth_cubit.dart';
import 'package:diplom_main/auth/ui/components/app_button.dart';
import 'package:diplom_main/auth/ui/components/app_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final controllerPassword = TextEditingController();
  final controllerPassword2 = TextEditingController();
  final controllerEmail = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Регистрация"),
      ),
      body: Form(
        key: formKey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 16),
                AppTextField(
                  controller: controllerEmail,
                  labelText: "почта",
                ),
                const SizedBox(height: 16),
                AppTextField(
                  controller: controllerPassword,
                  labelText: "пароль",
                  obscureText: true,
                ),
                const SizedBox(height: 16),
                AppTextField(
                  controller: controllerPassword2,
                  labelText: "повторите пароль",
                  obscureText: true,
                ),
                const SizedBox(height: 16),
                AppButton(
                  isFixedSize: false,
                  backgroundColor: Colors.blueAccent,
                  onPressed: () {
                    if (formKey.currentState?.validate() != true) return;

                    if (controllerPassword.text != controllerPassword2.text ||
                        controllerPassword.text.length < 6) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text(
                              'пароли должны совпадать и длина должна быть больше 6 ти')));
                    } else {
                      _onTapToSignUp(context.read<AuthCubit>());
                      Navigator.of(context).maybePop();
                    }
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

  void _onTapToSignUp(AuthCubit authCubit) => authCubit.signUp(
        password: controllerPassword.text,
        email: controllerEmail.text,
      );
}

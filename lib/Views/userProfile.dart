
import 'package:diplom_main/Auth/domain/auth_state/auth_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) 
  {

    User? user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              Navigator.of(context).maybePop();
              context.read<AuthCubit>().logOut();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              // Вывод почты текущего пользователя
              'Email: ${user?.email ?? "No email available"}',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Действие при нажатии на кнопку смены пароля
                // Можно добавить соответствующую логику здесь
              },
              child: const Text('Change Password'),
            ),
          ],
        ),
      ),
      
    );
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diplom_main/auth/domain/auth_state/auth_cubit.dart';
import 'package:diplom_main/auth/ui/auth_screen.dart';
import 'package:diplom_main/auth/ui/components/snack_bar.dart';
import 'package:diplom_main/widgets/app_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

List<String> countryNames = [
  'Австралия',
  'Бразилия',
  'Эфиопия',
  'Иран',
  'Италия',
  'Япония',
  'Россия',
  'США',
  'Викторина о всех странах'
];

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  Future<Map<int, int>> fetchQuizResults() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return {};

    final snapshot = await FirebaseFirestore.instance
        .collection('score')
        .where('userId', isEqualTo: user.uid)
        .get();

    final Map<int, int> results = {};
    for (var doc in snapshot.docs) {
      final data = doc.data();
      final countryId = data['countryId'] as int;
      final score = data['score'] as int;
      results[countryId] = score;
    }
    return results;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Личный кабинет"),
        actions: [
          IconButton(
            onPressed: () {
              context.read<AuthCubit>().logOut();
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => AuthScreen()),
                (Route<dynamic> route) => false,
              );
            },
            icon: const Icon(Icons.exit_to_app),
          ),
        ],
      ),
      body: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          state.whenOrNull(
            authorized: (userEntity) {
              if (userEntity.userState?.hasData == true) {
                AppSnackBar.showSnackBarWithMessage(
                  context,
                  userEntity.userState?.data,
                );
              }

              if (userEntity.userState?.hasError == true) {
                AppSnackBar.showSnackBarWithError(
                  context,
                  "${userEntity.userState?.error}",
                );
              }
            },
          );
        },
        builder: (context, state) {
          final userEntity = state.whenOrNull(
            authorized: (userEntity) => userEntity,
          );

          if (userEntity?.userState?.connectionState ==
              ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          return FutureBuilder<Map<int, int>>(
            future: fetchQuizResults(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }

              if (snapshot.hasError) {
                return Center(child: Text('Ошибка загрузки данных'));
              }

              if (!snapshot.hasData) {
                // Если нет данных о результатах викторины, отобразите только информацию о пользователе и кнопки
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            child:
                                Text(userEntity?.email.split("").first ?? "О"),
                          ),
                          const SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(userEntity?.displayName ?? "Без имени"),
                              Text(userEntity?.email ?? ""),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) => AppDialog(
                                  val1: "Новый Пароль",
                                  val2: "Повтор пароля",
                                  onPressed: (v1, v2) {
                                    context.read<AuthCubit>().passwordUpdate(
                                          newPassword: v1,
                                          repPassword: v2,
                                        );
                                  },
                                ),
                              );
                            },
                            child: const Text("Обновить пароль"),
                          ),
                          TextButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) => AppDialog(
                                  val1: "Имя пользователя",
                                  val2: "Почта",
                                  onPressed: (v1, v2) {
                                    context.read<AuthCubit>().userUpdate(
                                          email: v2,
                                          username: v1,
                                        );
                                  },
                                ),
                              );
                            },
                            child: const Text("Обновить данные"),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              }

              final results = snapshot.data!;
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          child: Text(userEntity?.email.split("").first ?? "О"),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(userEntity?.displayName ?? "Без имени"),
                            Text(userEntity?.email ?? ""),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 16),
                    Expanded(
                      child: ListView(
                        children: results.entries.map((entry) {
                          final countryId = entry.key;
                          final score = entry.value;
                          final countryName = countryNames[countryId];
                          return ListTile(
                            title: Text(countryName),
                            subtitle: Text('Результат: $score'),
                          );
                        }).toList(),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AppDialog(
                                val1: "Новый Пароль",
                                val2: "Повтор пароля",
                                onPressed: (v1, v2) {
                                  context.read<AuthCubit>().passwordUpdate(
                                        newPassword: v1,
                                        repPassword: v2,
                                      );
                                },
                              ),
                            );
                          },
                          child: const Text("Обновить пароль"),
                        ),
                        TextButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AppDialog(
                                val1: "Имя пользователя",
                                val2: "Почта",
                                onPressed: (v1, v2) {
                                  context.read<AuthCubit>().userUpdate(
                                        email: v2,
                                        username: v1,
                                      );
                                },
                              ),
                            );
                          },
                          child: const Text("Обновить данные"),
                        ),
                      ],
                    )
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}

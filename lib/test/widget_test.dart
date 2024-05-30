
import 'package:diplom_main/auth/data/firebase_auth_api.dart';
import 'package:diplom_main/auth/ui/auth_screen.dart';
import 'package:diplom_main/firebase_options.dart';
import 'package:diplom_main/widgets/app_dialog.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:diplom_main/main.dart';

void main(){
testWidgets('Firebase initialization test', (WidgetTester tester) async {
  await tester.runAsync(() async {
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
    // Проверяем, что Firebase успешно инициализирован
    expect(Firebase.apps.length, greaterThan(0));
  });
});
testWidgets('Route testing', (WidgetTester tester) async {
  await tester.pumpWidget(MyApp());
  // Проверяем, что главный экран загружается первым
  expect(find.byType(AuthScreen), findsOneWidget);
  // Проверяем маршруты на наличие
  expect(find.text('home'), findsOneWidget);
  expect(find.text('register'), findsNWidgets);
  expect(find.text('/profile'), findsOneWidget);
});
test('Authentication API test', () async {
  final authApi = AppFirebaseAuthApi();
  // Проверяем метод регистрации
  await expectLater(authApi.signUp(email: 'test@example.com', password: 'password'), completes);
  // Проверяем метод входа
  await expectLater(authApi.signIn(email: 'test@example.com', password: 'password'), completes);
  // Проверяем метод выхода
  await expectLater(authApi.signOut(), completes);
  // Проверяем метод обновления профиля
  await expectLater(authApi.userUpdate(email: 'testemail@example.com'), completes);
});
  testWidgets('AppDialog Test', (WidgetTester tester) async {
    // Создаем ключи для текстовых полей
    final val1Key = Key('val1');
    final val2Key = Key('val2');

    // Создаем переменные для хранения значений текстовых полей
    String val1Value = '';
    String val2Value = '';

    // Обработчик нажатия кнопки
    void onPressed(String v1, String v2) {
      val1Value = v1;
      val2Value = v2;
    }

    // Строим виджет
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: AppDialog(
            val1: 'Value 1',
            val2: 'Value 2',
            onPressed: onPressed,
          ),
        ),
      ),
    );

    // Находим текстовые поля
    final val1TextField = find.byKey(val1Key);
    final val2TextField = find.byKey(val2Key);

    // Проверяем наличие текстовых полей
    expect(val1TextField, findsOneWidget);
    expect(val2TextField, findsOneWidget);

    // Вводим значения в текстовые поля
    await tester.enterText(val1TextField, 'Test Value 1');
    await tester.enterText(val2TextField, 'Test Value 2');

    // Проверяем, что значения введены верно
    expect(find.text('Test Value 1'), findsOneWidget);
    expect(find.text('Test Value 2'), findsOneWidget);

    // Находим и нажимаем кнопку Применить
    final applyButton = find.text('Применить');
    await tester.tap(applyButton);

    // Проверяем, что функция onPressed вызывается с правильными аргументами
    expect(val1Value, 'Test Value 1');
    expect(val2Value, 'Test Value 2');
  });
}

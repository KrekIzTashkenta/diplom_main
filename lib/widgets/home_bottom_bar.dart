
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:diplom_main/Views/mainMenu.dart';
import 'package:diplom_main/Views/userProfile.dart';
import 'package:flutter/material.dart';

bool isActiveHome = false;
bool isActiveProfile = false;

class HomeBottomBar extends StatefulWidget {

  @override
  _HomeBottomBarState createState() => _HomeBottomBarState(null);
}

class _HomeBottomBarState extends State<HomeBottomBar> {
  int currentIndex = 0; // Переменная для хранения текущего индекса
  int indexConst = 0;
  int? defaultIndex = null;
  _HomeBottomBarState(int? defaultIndex) {
    defaultIndex = defaultIndex;
  }

  void _navigateToHomePage(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }

  void _navigateToProfilePage(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const ProfileScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      color: Colors.deepPurpleAccent,
      backgroundColor: Colors.deepPurple,
      items: const [
        Icon(Icons.home, size: 30),
        Icon(Icons.person_outline, size: 30),
        Icon(Icons.book, size: 30),
      ],
      onTap: (index) {
        if (defaultIndex == index) {
          return;
        }
        setState(() {
          currentIndex = index; // Обновляем текущий индекс при нажатии
        });

        // Добавьте вашу логику переходов сюда
        if (index == 0) {
          // Переход на домашнюю страницу
          _navigateToHomePage(context);
        } else if (index == 1) {
          // Переход на страницу профиля
          _navigateToProfilePage(context);
        }
      },
      //index: currentIndex, // Установка текущего индекса
    );
  }
}
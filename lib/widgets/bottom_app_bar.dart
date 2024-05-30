import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatefulWidget {
  const CustomBottomAppBar({super.key, required int currentIndex});

  @override
  State<CustomBottomAppBar> createState() => _CustomBottomAppBar();
}

class _CustomBottomAppBar extends State<CustomBottomAppBar> {
  int _currentIndex = 0;
  void onTabTapped(int index){
    setState(() {
      _currentIndex = index;
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        backgroundColor: Colors.deepPurpleAccent,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
          icon: Icon(Icons.home, size: 30, color: Colors.black,),
          label: 'Меню'
          ),
          BottomNavigationBarItem(icon: 
          Icon(Icons.person, size: 30,color: Colors.black,),
          label: 'Профиль'
          ),
          BottomNavigationBarItem(icon: 
          Icon(Icons.book_outlined, size: 30,color: Colors.black,),
          label: 'Интересное')
        ],
      ),
    );
  }
}

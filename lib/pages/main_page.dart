import 'package:flutter/material.dart';

import 'home_page.dart';
import 'genre_page.dart';
import 'favorite_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  // Daftar halaman kosongan yang dipanggil
  final List<Widget> _widgetPages = [
    const HomePage(),
    const GenrePage(),
    const FavoritePage(),
  ];

  void _navTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appbar'),
      ),
      body: Center(
        child: _widgetPages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ), 
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: 'Genre',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple,
        onTap: _navTap,
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/modules/home/views/home_view.dart';
import 'app/modules/testimoni/views/testimoni_view.dart';
import 'app/modules/about/views/about_view.dart';
import 'app/modules/contact/views/contact_view.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    HomeView(),
    TestimoniView(),
    AboutView(),
    ContactView(),
  ];

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onItemTapped,
        indicatorColor: Colors.brown.shade100,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home, color: Colors.brown),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.chat_outlined),
            selectedIcon: Icon(Icons.chat, color: Colors.brown),
            label: 'Testimoni',
          ),
          NavigationDestination(
            icon: Icon(Icons.storefront_outlined),
            selectedIcon: Icon(Icons.storefront, color: Colors.brown),
            label: 'Tentang',
          ),
          NavigationDestination(
            icon: Icon(Icons.phone_outlined),
            selectedIcon: Icon(Icons.phone, color: Colors.brown),
            label: 'Kontak',
          ),
        ],
      ),
    );
  }
}

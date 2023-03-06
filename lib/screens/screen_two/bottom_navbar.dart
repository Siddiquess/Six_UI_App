import 'package:flutter/material.dart';
import 'package:six_ui_app/screens/screen_two/screen_two.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({super.key});

  static const TextStyle styles =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> pages = [
    Center(
      child: Text('Home', style: styles),
    ),
    Center(
      child: Text('Orders', style: styles),
    ),
    Center(
      child: Text('Products', style: styles),
    ),
    SecondPage(),
    Center(
      child: Text('Account', style: styles),
    ),
  ];

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int indexNmbr = 3;

  changePages(int index) {
    setState(() {
      indexNmbr = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Manage Store'),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/third');
                },
                icon: const Icon(Icons.arrow_right))
          ],
        ),
        body: BottomNavBar.pages.elementAt(indexNmbr),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (index) => changePages(index),
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            currentIndex: indexNmbr,
            selectedFontSize: 12,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.format_align_justify), label: 'Orders'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.grid_view), label: 'Products'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.manage_history_outlined), label: 'Manage'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Account')
            ]));
  }
}

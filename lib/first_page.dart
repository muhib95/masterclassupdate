import 'package:flutter/material.dart';
import 'package:master_class/home.dart';
import 'package:master_class/profile_page.dart';
import 'package:master_class/settings.dart';

class FirstPage extends StatefulWidget {
    FirstPage({super.key});




  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

   int _selectedIndex = 0;
  void _bottomNavigation(int index){
    // print(index);
    setState(() {
      _selectedIndex=index;
    });

  }
  final List _pages=[
    Home(),
    SettingsPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        iconTheme: const IconThemeData(
          color: Colors.white
        ),
      ),
      drawer:  Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/home');
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: (){
                Navigator.pushNamed(context, '/settings');
              },
            ),
          ],
        ),
      ),
body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _bottomNavigation,
          items:const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
        label:'Home'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label:'Profile'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label:'Settings'
        ),
      ]


      ),
    );
  }
}

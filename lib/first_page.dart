import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

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
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.pushNamed(context, '/second');
          
        }, child: const Text('Go to 2nd page')),
      ),
      bottomNavigationBar: BottomNavigationBar(items:const [
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

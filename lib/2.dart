import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BasicApp',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      drawer: SideDrawer(),
      body: ContainerGrid(),
    );
  }
}

class ContainerGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(6, (index) => CustomContainer(index + 1)),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final int number;

  CustomContainer(this.number);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 56, 64, 175),
      margin: EdgeInsets.all(5),
      child: Center(
        child: Text(
          '$number',
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
      ),
    );
  }
}

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Profile',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home',
                style: TextStyle(
                    color: Color.fromARGB(255, 56, 64, 175), fontSize: 16)),
            onTap: () {
              // Implement the action to perform when Home is tapped.
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'Settings',
              style: TextStyle(
                  color: Color.fromARGB(255, 56, 64, 175), fontSize: 16),
            ),
            onTap: () {
              // Implement the action to perform when Settings is tapped.
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text(
              'About',
              style: TextStyle(
                  color: Color.fromARGB(255, 56, 64, 175), fontSize: 16),
            ),
            onTap: () {
              // Implement the action to perform when About is tapped.
            },
          ),
        ],
      ),
    );
  }
}

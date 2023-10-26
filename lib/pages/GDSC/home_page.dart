import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Home Page'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Color.fromARGB(255, 255, 255, 255),
            height: 80.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return RectangleButton(
                  label: '$index',
                  onPressed: () {
                    // Handle button click here
                  },
                );
              },
            ),
          ),
          // Add your containers with images and buttons
          PostContainer(
            imagePath: 'lib/images/peo1.jpg',
            profileImagePath: 'lib/images/profile1.jpg',
            username: 'nick',
          ),
          PostContainer(
            imagePath: 'lib/images/girl.jpg',
            profileImagePath: 'lib/images/profile2.jpg',
            username: 'lobo',
          ),
          PostContainer(
            imagePath: 'lib/images/apple.png',
            profileImagePath: 'lib/images/profile3.jpg',
            username: 'rider',
          ),
          PostContainer(
            imagePath: 'lib/images/pear.jpeg',
            profileImagePath: 'lib/images/profile4.jpg',
            username: 'phantom',
          ),
          PostContainer(
            imagePath: 'lib/images/peo.jpg',
            profileImagePath: 'lib/images/profile5.jpg',
            username: 'harit',
          ),
          PostContainer(
            imagePath: 'lib/images/peo2.jpeg',
            profileImagePath: 'lib/images/profile6.jpg',
            username: 'viper ',
          ),
        ],
      ),
    );
  }
}

class RectangleButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color buttonColor;

  RectangleButton({
    required this.label,
    required this.onPressed,
    this.buttonColor = const Color.fromARGB(255, 57, 8, 66),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          width: 100.0, // Adjust the width as needed
          height: 80.0, // Adjust the height as needed
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(8.0), // Add rounded corners
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

class PostContainer extends StatelessWidget {
  final String imagePath;
  final String profileImagePath;
  final String username;

  PostContainer({
    required this.imagePath,
    required this.profileImagePath,
    required this.username,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white, // Background color for posts
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage(profileImagePath),
                  radius: 20.0, // Adjust as needed
                ),
              ),
              Text(username),
            ],
          ),
          Container(
            width: double.infinity,
            height: 300.0,
            child: Image.asset(imagePath, fit: BoxFit.cover),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.thumb_up),
                onPressed: () {
                  // Handle like button click
                },
                color: Colors.blue, // Color change when selected
              ),
              IconButton(
                icon: Icon(Icons.share),
                onPressed: () {
                  // Handle share button click
                },
                color: Colors.green, // Color change when selected
              ),
              IconButton(
                icon: Icon(Icons.comment),
                onPressed: () {
                  // Handle comment button click
                },
                color: Colors.red, // Color change when selected
              ),
            ],
          ),
        ],
      ),
    );
  }
}

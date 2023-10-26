import 'package:flutter/material.dart';
import 'loginpage.dart'; // Import your Login page

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', // Define the initial route
      routes: {
        '/': (context) =>
            MainScreen(), // MainScreen is the page with the Login button
        '/login': (context) => LoginPage(), // LoginPage is the Login page
      },
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF3494E6),
              Color(0xFFEC6EAD),
            ],
          ),
        ),
        child: Stack(
          children: <Widget>[
            // New image circle at the top-left corner
            Positioned(
              top: 70,
              left: 160,
              child: CircleAvatar(
                radius: 45,
                backgroundImage: AssetImage(
                    'lib/images/logo.png'), // Replace with your image asset path
              ),
            ),

            // Text beside the image
            Positioned(
              top: 170,
              left: 120,
              child: Text(
                'SOCIAL',
                style: TextStyle(
                  fontSize: 54, // Adjust the text size
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            Positioned(
              top: 250,
              left: 85,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('lib/images/hello.jpg',
                      width: 250), // Replace with your image asset path

                  SizedBox(height: 40),

                  ElevatedButton(
                    onPressed: () {
                      // Navigate to Login page when Login button is pressed
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Container(
                      width: 180, // Increase the button width
                      height: 70, // Increase the button height
                      alignment: Alignment.center,
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24), // Adjust the text size
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

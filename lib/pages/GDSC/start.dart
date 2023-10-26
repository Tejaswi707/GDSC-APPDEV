import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF3494E6),
                Color(0xFFEC6EAD)
              ], // Change these colors as needed
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('lib/images/hi.jpeg',
                    width: 200), // Replace with your image asset path

                SizedBox(height: 20),

                ElevatedButton(
                  onPressed: () {
                    // Handle Sign Up button press
                  },
                  child: Container(
                    width: 200, // Increase the button width
                    height: 60, // Increase the button height
                    alignment: Alignment.center,
                    child: Text('Sign Up',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20)), // Adjust text size
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black, // Black background for Sign Up
                  ),
                ),

                SizedBox(height: 10),

                ElevatedButton(
                  onPressed: () {
                    // Handle Login button press
                  },
                  child: Container(
                    width: 200, // Increase the button width
                    height: 60, // Increase the button height
                    alignment: Alignment.center,
                    child: Text('Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20)), // Adjust text size
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black, // Black background for Login
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

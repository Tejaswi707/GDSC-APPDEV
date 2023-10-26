import 'package:classico/components/my_button.dart';
import 'package:classico/components/mytextfield.dart';
import 'package:classico/components/square_title.dart';
import 'package:classico/pages/signup_page.dart';
import 'package:flutter/material.dart';

//import 'package:flutter/foundation.dart';
//import 'pages/signup_page.dart';
//import 'package:flutter/material.dart';
//import 'package:firebase_core/firebase_core.dart';
//import 'firebase_options.dart';

void main() {
  runApp(const MyApp());
  // ignore: unused_local_variable
  SignupPage myObject = SignupPage();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'Flutter Demo',
      // theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      //  home:SignupPage();
    );
  }
}

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  // LoginPage({Key? key}) : super(key: key);

  //text editing cntrollers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  //sign user in method
  void signUserIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* backgroundColor: Colors.grey[300],*/

      // body: SafeArea(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(81, 168, 240, 1),
              Color.fromARGB(255, 201, 226, 243)
            ], // Replace with your desired colors
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              //logo
              const Icon(
                Icons.person_2,
                size: 70,
              ),
              const SizedBox(height: 20),
              //welcome back
              Text(
                'Hello! Welcome back',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 25),
              // username tetxtfield
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
                prefixIcon: Icons.person,
              ),
              const SizedBox(height: 10),
              //password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
                prefixIcon: Icons.lock_person,
              ),
              const SizedBox(height: 10),

              //forgot password

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 77, 76, 76),
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),

              //sign in button
              MyButton(
                onTap: signUserIn,
                //  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              ),
              const SizedBox(height: 50),

              //or conitue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('Or continue with',
                          style: TextStyle(color: Colors.grey[700])),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1.0,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),
              //google + applesign in button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //google button
                  SquareTile(imagePath: 'lib/images/google.jpg'),
                  const SizedBox(width: 10),
                  //apple button
                  SquareTile(imagePath: 'lib/images/apple.png'),
                ],
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: Colors.grey[700], fontSize: 18),
                  ),
                  SizedBox(width: 4),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupPage()),
                      );
                    },
                    child: Text(
                      'Register now',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*
import 'package:classico/components/my_button.dart';
import 'package:classico/components/mytextfield.dart';
import 'package:classico/components/square_title.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {
    // Implement your sign-in logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(81, 168, 240, 1),
              Color.fromARGB(255, 201, 226, 243),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Icon(
                Icons.lock,
                size: 70,
                color: Colors.white, // Adjust the color
              ),
              SizedBox(height: 30),
              Text(
                'Hello! Welcome back',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 25),
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),
              SizedBox(height: 10),
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.grey[700], // Adjust the color
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              MyButton(
                onTap: signUserIn,
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1.0,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(
                      imagePath: 'lib/images/google.jpg'), // Check the path
                  SizedBox(width: 10),
                  SquareTile(
                      imagePath: 'lib/images/apple.png'), // Check the path
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  SizedBox(width: 4),
                  Text(
                    'Register now',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/

/*class SignupPage extends StatelessWidget {
  SignupPage({super.key});
  // LoginPage({Key? key}) : super(key: key);

  //text editing cntrollers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  //sign user in method
  void signUserIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* backgroundColor: Colors.grey[300],*/

      // body: SafeArea(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(189, 29, 189, 1),
              Color.fromARGB(255, 201, 226, 243)
            ], // Replace with your desired colors
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              //logo
              const Icon(
                Icons.lock,
                size: 70,
              ),
              const SizedBox(height: 30),
              //welcome back
              Text(
                'Hello! Welcome back',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 25),
              // username tetxtfield
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),
              const SizedBox(height: 10),
              //password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(height: 10),

              //forgot password

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 77, 76, 76)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),

              //sign in button
              MyButton(
                onTap: signUserIn,
              ),
              const SizedBox(height: 50),

              //or conitue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('Or continue with',
                          style: TextStyle(color: Colors.grey[700])),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1.0,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),
              //google + applesign in button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //google button
                  SquareTile(imagePath: 'lib/images/google.jpg'),
                  const SizedBox(width: 10),
                  //apple button
                  SquareTile(imagePath: 'lib/images/apple.png'),
                ],
              ),
              const SizedBox(height: 20),
              //not a member register
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a memeber?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    'Register now',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/

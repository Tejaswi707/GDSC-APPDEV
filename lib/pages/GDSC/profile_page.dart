import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfilePage(),
  ));
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String username = 'USERNAME';
  String bio = 'BIO';
  int followers = 898;
  int following = 670;

  TextEditingController usernameController = TextEditingController();
  TextEditingController bioController = TextEditingController();

  @override
  void initState() {
    usernameController.text = username;
    bioController.text = bio;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:
          true, // Allow the page to resize when the keyboard appears
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Profile Page'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black, // Set the border color to black
                    width: 4.0, // Set the border width
                  ),
                ),
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('lib/images/prof.jpg'),
                ),
              ),

              SizedBox(height: 20),
              // Editable Username Text Field
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: usernameController,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                  ),
                ),
              ),
              // Editable Bio Text Field
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: bioController,
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Bio',
                  ),
                ),
              ),
              // Number of Followers and Following
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        followers.toString(),
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Followers',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        following.toString(),
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Following',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
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

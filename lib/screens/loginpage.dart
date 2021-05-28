import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Image.asset(
          'images/login_image.png',
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          'Welcome',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    hintText: 'Enter UserName', labelText: 'UserName'),
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Enter Password', labelText: 'Password'),
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: Text('Login'))
            ],
          ),
        ),
      ],
    ));
  }
}

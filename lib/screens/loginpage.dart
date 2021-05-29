import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState.validate()) {
      setState(() {
        changeButton = true;
      });

      await Future.delayed(Duration(seconds: 1));

      await Navigator.pushNamed(context, MyRoutes.homeroute);
      setState(() {
        changeButton = false;
      });
    }
  }

  //Global key can be accessed from anywhere
  @override
  Widget build(BuildContext context) {
    //context - location of widget insided the elememnt tree
    return Scaffold(
        body: SingleChildScrollView(
      // this can fix overlow in smaller devices
      child: Column(
        children: <Widget>[
          Image.asset(
            'images/login_image.png',
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Welcome $name',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    //Text form field can be grouped with form
                    decoration: InputDecoration(
                        hintText: 'Enter UserName', labelText: 'UserName'),
                    onChanged: (String value) {
                      setState(() {
                        name = value;
                      });
                    },
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Username can\'t be empty';
                      } else if (value.toUpperCase() != 'PRANAV') {
                        return 'Invalid Username';
                      } else {
                        return null;
                      }
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Enter Password', labelText: 'Password'),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Password can\'t be empty';
                      } else if (value.toUpperCase() == 'PRANAV123  ') {
                        return 'Incorrect password';
                      } else if (value.length < 6) {
                        return 'Password can\'t be below 6';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Material(
                    borderRadius:
                        BorderRadius.circular(changeButton ? 50.0 : 8.0),
                    //here we must be careful to keep the radius as height,
                    color: Colors.deepPurple,
                    child: InkWell(
                      splashColor: Colors.red,
                      onTap: () => moveToHome(context),
                      //Inkwells ancestor must be material
                      //ink can be used instead of container
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        height: 50,
                        width: changeButton ? 50 : 150,
                        alignment: Alignment.center,
                        child: changeButton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                'Login',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                        // decoration: BoxDecoration(
                        //Note: the properties is used inside the animated container is used under material!!;
                        //   // shape:
                        //   //     changeButton ? BoxShape.circle : BoxShape.rectangle,
                        //   //these both can't exist alone
                        //   borderRadius:
                        //       BorderRadius.circular(changeButton ? 50.0 : 8.0),
                        //   //here we must be careful to keep the radius as height,
                        //   color: Colors.deepPurple,
                        // ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

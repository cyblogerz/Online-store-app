import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageurl =
        'https://avatars.githubusercontent.com/u/74711322?s=460&u=1daa2e5ec0cf6ed0ffc05619fe7661db52d84e56&v=4';
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          //any
          children: <Widget>[
            DrawerHeader(
              //boxdecoration can be used here inorder to change the color
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                //here we can also use
                accountName: Text(
                  'Pranav Ajay',
                  style: TextStyle(color: Colors.white),
                ),
                accountEmail: Text(
                  'pranavajay2002@gmail.com',
                  style: TextStyle(color: Colors.white),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageurl),
                  //here it does not take image widget,
                  //need to provide provider
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  color: Colors.white,
                ),
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                'Profile',
                style: TextStyle(
                  color: Colors.white,
                ),
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.bag,
                color: Colors.white,
              ),
              title: Text(
                'Shop',
                style: TextStyle(
                  color: Colors.white,
                ),
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.cart,
                color: Colors.white,
              ),
              title: Text(
                'My Cart',
                style: TextStyle(
                  color: Colors.white,
                ),
                textScaleFactor: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

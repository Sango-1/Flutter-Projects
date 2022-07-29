import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({Key? key}) : super(key: key);

  final imageUrl =
      "https://icon-library.com/images/username-icon/username-icon-6.jpg";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.white),
                  accountName: Text("Atul Sangwan"),
                  accountEmail: Text("atulsangwan1997@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  )),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                size: 30,
                color: Colors.blue,
              ),
              title: Text(
                "Home",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                size: 30,
                color: Colors.blue,
              ),
              title: Text(
                "Profile",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.email,
                size: 30,
                color: Colors.blue,
              ),
              title: Text(
                "Email",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.transparent,
    );
  }
}

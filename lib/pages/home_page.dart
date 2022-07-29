import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(126, 85, 73, 0.29),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text(
            "SSB WARRIORS",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.zero,
                  child: Text(
                    "Hello Warriors",
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  width: 120,
                  height: 60,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(126, 85, 73, 0.29),
                    image: new DecorationImage(
                        image: AssetImage("assets/images/ssb.jpeg"),
                        fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: Container(
                    child: TextFormField(
                      decoration: new InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        hintText: "Search courses",
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 110,
                      height: 50,
                      child: Text(
                        "Psychology",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: 90,
                      height: 50,
                      child: Text(
                        "Interview",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 50,
                      child: Text(
                        "GTO",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 200,
                      width: 120,
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black,
                        image: new DecorationImage(
                            image: AssetImage("assets/images/psychology.jpeg"),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 120,
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black,
                        image: new DecorationImage(
                            image: AssetImage("assets/images/interview.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 120,
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black,
                        image: new DecorationImage(
                            image: AssetImage("assets/images/gto.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        drawer: MyDrawer(),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          backgroundColor: Colors.white,
          elevation: 0.0,
          items: [
            BottomNavigationBarItem(
                label: "Home",
                icon: Icon(
                  Icons.home,
                )),
            BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(
                  Icons.person,
                )),
            BottomNavigationBarItem(
                label: "Settings",
                icon: Icon(
                  Icons.settings,
                )),
          ],
        ),
      ),
    );
  }
}

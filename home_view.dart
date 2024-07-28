import 'package:firstapp/pages/add_view.dart';
import 'package:firstapp/pages/remove_view.dart';
import 'package:firstapp/pages/splash_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Color(0xffEB8071),
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(50))),
            child: Column(
              children: [
                SizedBox(height: 50),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  title: Text("Hello, Admin!",
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      )),
                  subtitle: Text(
                    "What will you do today?",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                      color: Colors.white,
                    ),
                  ),
                  trailing: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/Profile.png'),
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
          Container(
            color: Color(0xffEB8071),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.only(topLeft: Radius.circular(100)),
              ),
              child: GridView.count(
                shrinkWrap: true,
                mainAxisSpacing: 25,
                crossAxisSpacing: 25,
                crossAxisCount: 2,
                children: [
                  itemDashboard('Add', CupertinoIcons.archivebox, Colors.deepPurple, () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AddView()));
                  }),
                  itemDashboard('Remove', CupertinoIcons.delete, Colors.indigo, () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RemoveView(restoList: [], menuList: [],)));
                  }),
                  itemDashboard('Log Out', CupertinoIcons.arrow_up_left_circle, Colors.tealAccent, () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SplashView()));
                  }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget itemDashboard(String title, IconData iconData, Color background, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 2),
              color: Colors.grey,
              spreadRadius: 2,
              blurRadius: 10,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: background,
                shape: BoxShape.circle,
              ),
              child: Icon(iconData, color: Colors.white),
            ),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(
                fontFamily: "Inter",
                fontSize: 22,
                fontWeight: FontWeight.w800,
                color: Color(0xffEB8071),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff416d6d),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(10, 50, 0, 0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed("profile");
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 4,
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 10,
                          color: Colors.black.withOpacity(0.1),
                          offset: Offset(0, 1),
                        ),
                      ],
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/profile.jpg"),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "Alex Walker",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.home, color: Colors.white),
                  title: Text(
                    "Home",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.category_outlined,
                      color: Colors.white.withOpacity(0.5)),
                  title: Text(
                    "Categories",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.shopping_cart_outlined,
                      color: Colors.white.withOpacity(0.5)),
                  title: Text(
                    "Card shop",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                ListTile(
                  leading:
                      Icon(Icons.person, color: Colors.white.withOpacity(0.5)),
                  title: Text(
                    "Profile",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.settings,
                      color: Colors.white.withOpacity(0.5)),
                  title: Text(
                    "Settings",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.info_outline,
                      color: Colors.white.withOpacity(0.5)),
                  title: Text(
                    "About app",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.developer_mode_outlined,
                      color: Colors.white.withOpacity(0.5)),
                  title: Text(
                    "About Developer",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.note_add_outlined,
                      color: Colors.white.withOpacity(0.5)),
                  title: Text(
                    "Suggestins",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(40, 0, 40, 20),
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                "LOGOUT",
                style: TextStyle(
                  color: Color(0xff416d6d),
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

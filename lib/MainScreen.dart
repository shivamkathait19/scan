import 'package:flutter/material.dart';
class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Center(
         child: Padding(
           padding: EdgeInsets.only(right: 70),
           child: Text("SCAN IT",style: TextStyle(
               fontWeight: FontWeight.bold),),
         ),
       ),
     backgroundColor: Colors.black,
       foregroundColor: Colors.white,

     ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(10),

          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.cyanAccent,
                    Colors.teal,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 40, color: Colors.teal),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Welcome",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            // Drawer menu items
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {},
            ),
          ],
        ),
      ),


    );
  }
}

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
           child: Text("Scan itttt",style: TextStyle(
               fontWeight: FontWeight.bold),),
         ),
       ),
     backgroundColor: Colors.black,
       foregroundColor: Colors.white,

     ),
      drawer: Drawer(
      child: ListView(
        children: [
          DrawerHeader
            (decoration: BoxDecoration(
           gradient: LinearGradient(colors: [Colors.cyanAccent],
             begin: Alignment.topLeft,
             end: Alignment.bottomRight,
           )


          ),
              child: Column(

            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, color: Colors.teal, size: 30),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Welcome',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),

            ],
          ))
        ],
      ),
      ),
    );
  }
}

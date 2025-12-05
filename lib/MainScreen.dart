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
        backgroundColor: Colors.black,
        shadowColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
        DrawerHeader(
        decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.black, Colors.brown],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        CircleAvatar(
        radius: 30,
        backgroundColor: Colors.white,
        child: Icon(Icons.person, color: Colors.teal, size: 30),
      ),
      SizedBox(height: 10),
    )))),
    );
  }
}

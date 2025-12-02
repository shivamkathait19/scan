import 'package:flutter/material.dart';
class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Scan your product",style: TextStyle(
          fontSize: 50, fontWeight: FontWeight.w800,fontFamily:'StoryScript-Regular'
        ),),
      ),
      body: Column(
        children: [
      Text("Scan-product"),
        ],



      ),
    );
  }
}

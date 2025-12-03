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
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:
        Center( child: Text("Scan your product",style: TextStyle(
          fontSize: 50, fontWeight: FontWeight.w800,fontFamily:'StoryScript-Regular'
       ,color: Colors.white ),),),
      ),
      body: Column(
        children: [
          Padding(
        padding:  EdgeInsets.only(top: 300,left: 130),
        child: Image.network("https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixabay.com%2Fillustrations%2Fpikachu-pokemon-character-cartoon-5527375%2F&psig=AOvVaw0EbanOfrMr-MKCd31awU6p&ust=1764866721084000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCJjz4KfvoZEDFQAAAAAdAAAAABAE",
        height: 500,
          width: 300,
        ),
      ),

        ]
      ),
    );
  }
}

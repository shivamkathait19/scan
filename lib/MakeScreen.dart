import 'package:flutter/material.dart';

class projectX extends StatefulWidget {
  const projectX({super.key});

  @override
  State<projectX> createState() => _projectXState();
}

class _projectXState extends State<projectX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Try  project ",style: TextStyle(backgroundColor: Colors.black,fontSize: 20),),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 60,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx,index){
                  return Container(
                    margin: EdgeInsets.all(5),
                    width: 80,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white
                    ),
                  );
                }
              )
            )
          ],
        ),
      )
    );
  }
}

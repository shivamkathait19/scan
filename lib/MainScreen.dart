import 'package:flutter/material.dart';
class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  List<String> Items=[
    'home'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,

        ),
        body: Container(
          margin: EdgeInsets.all(1),
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
                              color: Colors.white,),
                            child:Center(
                              child: Text(Items[index],style: FontStyle.values,),
                            )

                          //child: ,
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

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
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,),
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
                    physics: BouncingScrollPhysics(),
                    itemCount: Items.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx,index){
                      return GestureDetector(
                        onTap: (){
                          setState(() {
                            current = index;
                          });
                        },
                        child :  AnimatedContainer(duration: Duration(milliseconds: 300),
                          margin: EdgeInsets.all(5),
                          width: 80,
                          height: 45,
                          decoration: BoxDecoration(color: current ==index?  Colors.white70 : Colors.white54,
                            borderRadius: current == index?BorderRadius.circular(15): BorderRadius.circular(10),
border: current == index ? Border.all(color: Colors.deepPurple,width: 4):null
                          ),
                            child:Center(
                              child: Text(Items[index],),/*fontWeight : FontWeight.w500,*/
                            //  color :current == index ? color : current == index ? Colors.black

                            )
                      ),
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

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:samlpe/homepage.dart';

import 'onboard_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: PageView.builder(
          itemCount: screens.length,
          onPageChanged: (index){
            setState((){
              currentIndex =index;
            });
          },
            itemBuilder: (context,index){
          return Scaffold(body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(screens[index].title.toString()),
                Image.asset(screens[index].imageUrl.toString()),
                Text(screens[index].body.toString()),
                Container(
                  height: 10,
                  child: ListView.builder(
                    shrinkWrap: true,
                      itemCount: screens.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                        margin: EdgeInsets.symmetric(horizontal: 3),
                      height: 8,width: 8,
                      decoration: BoxDecoration(
                          color: currentIndex == index?Colors.green:Colors.red,borderRadius: BorderRadius.circular(10.0)
),
                      )],);
                  }),
                ),
               currentIndex == screens.length-1?GestureDetector(
                 onTap: (){
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
                 },
                 child: Container(
                   child: Icon(Icons.add,color: Colors.white,),
                   height: 60,width: 60,decoration: BoxDecoration(color: HexColor('#20C3AF'),borderRadius: BorderRadius.circular(40.0)),),
               ) :Container(
                  alignment: Alignment.center,
                  color: HexColor('#20C3AF'),
                  height: 30,width: 250,child: Text('Next'),),
                
              ],),
          ),);
        })
    );
  }
}
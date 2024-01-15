import 'package:flutter/material.dart';
import 'package:flutter_yoga/Motivation.dart';
import 'package:flutter_yoga/Screens/Home.dart';
import 'package:flutter_yoga/Welcome_Screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(elevation: 0,
          title: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Pavi',
                style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),
              ),Text(
                'tra',
                style: TextStyle(color: Colors.blue,fontSize: 22,fontWeight: FontWeight.bold),
              )
            ],
          ),
          backgroundColor: Colors.white,
        ),
        body:
        Container(height: h,width: w,padding: const EdgeInsets.only(top:50,left: 30,right: 30),color: Colors.white,
          child: Column(children: [
            Container(width: MediaQuery.of(context).size.width,height: 200,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/homesc/Slog.png"),fit: BoxFit.fill,),

                  color: Colors.blue,borderRadius:
                  BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),topRight: Radius.circular(80)),
                  boxShadow: [BoxShadow(offset: Offset(5, 10),
                      blurRadius: 20,
                      color: Colors.blue.withOpacity(0.8))]),
            ),
            SizedBox(height: 50,),
            Wrap(direction: Axis.horizontal,children: [
              Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,children: [
                GestureDetector(onTap:() { Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));}
                  ,child: Container(height: 150,width: 150,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/homesc/Yoga.png"),fit: BoxFit.cover,),color: Colors.white,borderRadius: BorderRadius.circular(30),
                        boxShadow: [BoxShadow(offset:Offset(2, 2),blurRadius: 10,color: Colors.blue)]),child: Center(child:
                    Column(mainAxisAlignment: MainAxisAlignment.end,children: [Text("Yoga",style: TextStyle(fontSize: 17,fontWeight: FontWeight.normal),),SizedBox(height: 10,)],)),),),

                SizedBox(width: 20,),

                GestureDetector(onTap:() {Navigator.push(context, MaterialPageRoute(builder: (context)=>MEDITAION_P1()));}
                  ,child: Container(height: 150,width: 150,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/homesc/Meditation.png"),fit: BoxFit.fill,),color: Colors.blue,borderRadius: BorderRadius.circular(30),
                        boxShadow: [BoxShadow(offset:Offset(2, 2),blurRadius: 10,color: Colors.blue)]),child: Center(child:
                    Column(mainAxisAlignment: MainAxisAlignment.end,children: [Text("Meditation",style: TextStyle(fontSize: 17,fontWeight: FontWeight.normal),),SizedBox(height: 10,)],)),),),

              ],),
              Container(height: 50,),
              Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,children: [
                GestureDetector(onTap:() { Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeScreen()));}
                  ,child: Container(height: 150,width: 150,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/homesc/Ebook.png"),fit: BoxFit.fill,),color: Colors.blue,borderRadius: BorderRadius.circular(30),
                        boxShadow: [BoxShadow(offset:Offset(2, 2),blurRadius: 10,color: Colors.blue)]),child: Center(child:
                    Column(mainAxisAlignment: MainAxisAlignment.end,children: [Text("Ebook",style: TextStyle(fontSize: 17,fontWeight: FontWeight.normal),),SizedBox(height: 10,)],)),),),

                SizedBox(width: 20,),

                GestureDetector(onTap:() {}
                  ,child: Container(height: 150,width: 150,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/homesc/Explore.png"),fit: BoxFit.fill,),color: Colors.blue,borderRadius: BorderRadius.circular(30),
                        boxShadow: [BoxShadow(offset:Offset(2, 2),blurRadius: 10,color: Colors.blue)]),child: Center(child:
                    Column(mainAxisAlignment: MainAxisAlignment.end,children: [Text("Explore",style: TextStyle(fontSize: 17,fontWeight: FontWeight.normal),),SizedBox(height: 10,)],)),),),

              ],)
            ],),

          ],),
        )
    );
  }
}

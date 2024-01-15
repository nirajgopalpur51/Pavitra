import 'package:flutter/material.dart';

class Chapter extends StatelessWidget {
  const Chapter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.greenAccent,title: Text("Chapter: 1"),),
      body: Container(height: MediaQuery.of(context).size.height,width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/Chapter.jpg"),fit: BoxFit.fill,)),
      ),
    );
  }
}

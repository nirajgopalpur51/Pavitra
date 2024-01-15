import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {


AnimationController animationController;
Animation colorsTween, homeTween, yogaTween, iconTween,drawerTween;
Function()? onPressed;

CustomAppBar({
  required this.animationController,
required this.colorsTween,
required this.drawerTween,
required this.homeTween,
required this.iconTween,
required this.onPressed,
required this.yogaTween
});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: AnimatedBuilder(
        animation: animationController,
        builder: (context,child)=>AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.dehaze,
              color: drawerTween.value,
            ),
            onPressed: onPressed,

          ),
          backgroundColor: colorsTween.value,
          elevation: 0,
          title: Row(
            children: [
              Text("HOME " , style: TextStyle(
                color: homeTween.value,
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),),
              Text("YOGA", style: TextStyle(
                  color: yogaTween.value,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),)
            ],
          ),
          actions: [
            IconButton(icon : Icon(Icons.notifications) ,onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("No New Notifications"),
              ));
            }, color: iconTween.value,),

          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class MEDITAION_P1 extends StatefulWidget {
  const MEDITAION_P1({Key? key}) : super(key: key);

  @override
  State<MEDITAION_P1> createState() => _MEDITAION_P1State();
}

class _MEDITAION_P1State extends State<MEDITAION_P1> {

  bool playing=false;
  IconData playBtn = Icons.play_arrow;
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
          // ignore: prefer_const_constructors
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white,
                Colors.white70
              ]
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: 48.0,
          ),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Medit',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 38.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'ation',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 38.0,
                        fontWeight: FontWeight.bold,),
                    )
                  ],
                ),
                SizedBox(
                  height: 24.0,
                ),
                Center(
                  child: Container(
                    width: 400.0,
                    height: 500.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        image: DecorationImage(
                          image: AssetImage("assets/maditation_2.jpg"),
                        )
                    ),
                  ),
                ),
                SizedBox(height: 18.0,),

                Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0)
                          )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              IconButton(
                                iconSize: 62.0,
                                color: Colors.blue[800],
                                onPressed: () {
                                  if (!playing) {
                                    player.play(AssetSource("theme_1.mp3")) ;
                                    setState(() {
                                      playBtn = Icons.pause;
                                      playing = true;
                                    });
                                  } else {
                                    player.pause() ;
                                    setState(() {
                                      playBtn = Icons.play_arrow;
                                      playing = false;
                                    });
                                  }
                                },
                                icon: Icon(
                                  playBtn,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

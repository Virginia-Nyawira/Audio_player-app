import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ThousandYears extends StatefulWidget {
  @override
  _ThousandYearsState createState() => _ThousandYearsState();
}

class _ThousandYearsState extends State<ThousandYears> {


  //we will need some variables
  bool playing = false; // at the begining we are not playing any song
  IconData playBtn = Icons.play_arrow; // the main state of the play button icon

  //Now let's start by creating our music player
  //first let's declare some object
  AudioPlayer _player;
  AudioCache cache;

  Duration position = new Duration();
  Duration musicLength = new Duration();

  //we will create a custom slider

  Widget slider() {
    return Container(
      width: 400.0,
      child: Slider.adaptive(
          activeColor: Colors.orange[800],
          inactiveColor: Colors.grey[350],
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  //let's create the seek function that will allow us to go to a certain position of the music
  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  //Now let's initialize our player
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _player = AudioPlayer();
    cache = AudioCache(fixedPlayer: _player);

    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
    cache.load("A_Thousand_Years.mp3");
  }


  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.lightGreenAccent,
                  Colors.lime,
                  Colors.limeAccent
                ])),
          ),
          Positioned(
              width: 50,
              right: 0.0,
              height: 300,
              child: Container(
                color: Colors.black,
              )),
          Positioned(
            top: 30,
            right: 0.0,
            left: 0.0,
            child: Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.black,
                      ),
                      onPressed: null),
                  Text("Playing Now",style: TextStyle(fontWeight: FontWeight.w600),),
                  IconButton(
                      icon: Icon(
                        Icons.queue_music,
                        color: Colors.white,
                      ),
                      onPressed: null),
                ],
              ),
            ),
          ),

          Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                height: 355,
                width: 300,
                color: Colors.black,
                child: Column(
                  children: [
                    SizedBox(height: 160,),
                    Row(
                      children: [
                        SizedBox(width: 40,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("A Thousand Years",style: TextStyle(fontWeight: FontWeight.w600,
                            fontSize: 18.0,color: Colors.white),),
                            Text("Perri",style: TextStyle(fontWeight: FontWeight.w400,
                            fontSize: 12,color:Colors.white70),),
                          ],
                        ),
                        SizedBox(width: 140,),
                        IconButton(
                            icon: Icon(
                              Icons.favorite,
                              color: Colors.lightGreenAccent,
                            ),
                            onPressed: null),
                      ],
                    ),
                   SizedBox(height: 10,),
                   ///***************************************Slider and time here
                    slider(),
                    Padding(
                      padding: const EdgeInsets.only(left:20,right: 20),
                      child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text(
                           "${position.inMinutes}:${position.inSeconds.remainder(60)}",
                           style: TextStyle(
                             fontSize: 18.0,
                             color: Colors.green,
                           ),
                         ),

                         Text(
                           "${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                           style: TextStyle(
                             fontSize: 18.0,
                             color: Colors.green,
                           ),
                         ),
                       ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.shuffle,
                              color: Colors.white60,
                            ),
                            onPressed: null),
                        IconButton(
                            icon: Icon(
                              Icons.fast_rewind,
                              color: Colors.white,
                            ),
                            onPressed: null),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.lightGreen,
                          child: GestureDetector(
                            onTap: (){
                              //here we will add the functionality of the play button
                              if (!playing) {
                                //now let's play the song
                                cache.play("A_Thousand_Years.mp3");
                                setState(() {
                                  playBtn = Icons.pause;
                                  playing = true;
                                });
                              } else {
                                _player.pause();
                                setState(() {
                                  playBtn = Icons.play_arrow;
                                  playing = false;
                                });
                              }
                            },///************************************************Pause Here
                            child: Icon(playBtn,),
                          ),
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.fast_forward,
                              color: Colors.white,
                            ),
                            onPressed: null),
                        IconButton(
                            icon: Icon(
                              Icons.repeat,
                              color: Colors.white60,
                            ),
                            onPressed: null),
                      ],
                    )
                  ],
                ),
              )
          ),
          Positioned(
            top: 100,
            left: 40,
            right: 40,
            child: Container(
              height:300,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/a10000yrs.jpg",
                    ),
                    fit: BoxFit.cover,
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}

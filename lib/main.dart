import 'package:audio_ui/thousand_years_play.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Positioned(
              top: 0.5,
              right: 0.5,
              left: 0.5,
              child: Image.asset(
                "assets/christinna.jpg",
              )),
          Positioned(
              top: 12,
              left: 15,
              right: 15,
              child: SafeArea(
                  child: Container(
                height: 50,
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 26,
                          color: Colors.white,
                        ),
                        onPressed: null),
                    IconButton(
                        icon: Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: null),
                  ],
                ),
              ))),
          Positioned(
            top: 270,
              left: 40,
              child: Column(
                children: [
                  Text("Artist", style: TextStyle(
                      color: Colors.white38,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic),),
                  Text("Christina Perri", style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic),),
                ],
              )),
          Positioned(
            top: 325,
            right: 0.1,
            left: 0.1,
            child: Container(
              height: 500,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50.0),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Songs",
                            style: TextStyle(
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.italic),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "112",
                            style: TextStyle(
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.italic),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Followers",
                            style: TextStyle(
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.italic),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "60M",
                            style: TextStyle(
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.italic),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Following",
                            style: TextStyle(
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.italic),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "1563",
                            style: TextStyle(
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.italic),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "     Popular",
                    style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w700,
                        fontSize: 16.0),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 120,
                   // color: Colors.white38,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 120,
                          width: 110,
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                 Container(
                                   height:80,
                                   width: 110,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/cperry.jpg",
                                ),
                                fit: BoxFit.cover,
                              )
                                   ),
//                                   child: Image.asset("Assets/celine.jpg",),
                                 ),
                                  Positioned(
                                      bottom: 0.0,
                                      right: 5,
                                      child: CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.blueGrey,
                                        child: GestureDetector(///***********************PLAY MUSIC HERE******************
                                          child: Icon(
                                            Icons.play_arrow,
                                            color: Colors.white,
                                            size: 15.0,
                                          ),
                                          onTap: (){
                                            Navigator.of(context,rootNavigator: true).push(
                                            MaterialPageRoute(builder: (context)=>ThousandYears()));

                                          },
                                        ),
                                      ))
                                ],
                              ),
                              SizedBox(height: 4,),
                              Text(
                                "A Thousand years",
                                style: TextStyle(
                                    color: Colors.white60,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                   ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 120,
                          width: 110,
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                 Container(
                                   height:80,
                                   width: 110,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/believe1.jpg",
                                ),
                                fit: BoxFit.cover,
                              )
                                   ),
//                                   child: Image.asset("Assets/celine.jpg",),
                                 ),
                                  Positioned(
                                      bottom: 0.0,
                                      right: 5,
                                      child: CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.blueGrey,
                                        child: GestureDetector(
                                          child: Icon(
                                            Icons.play_arrow,
                                            color: Colors.white,
                                            size: 18.0,
                                          ),
                                        ),
                                      ))
                                ],
                              ),
                              SizedBox(height: 4,),
                              Text(
                                "Burning Gold",
                                style: TextStyle(
                                    color: Colors.white60,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                   ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 120,
                          width: 110,
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                 Container(
                                   height:80,
                                   width: 110,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/cperry2.webp",
                                ),
                                fit: BoxFit.cover,
                              )
                                   ),
//                                   child: Image.asset("Assets/celine.jpg",),
                                 ),
                                  Positioned(
                                      bottom: 0.0,
                                      right: 5,
                                      child: CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.grey,
                                        child: GestureDetector(
                                          child: Icon(
                                            Icons.play_arrow,
                                            color: Colors.white,
                                            size: 18.0,
                                          ),
                                        ),
                                      ))
                                ],
                              ),
                              SizedBox(height: 4,),
                              Text(
                                "Be my Forever",
                                style: TextStyle(
                                    color: Colors.white60,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                   ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 120,
                          width: 110,
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                 Container(
                                   height:80,
                                   width: 110,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/human.jpg",
                                ),
                                fit: BoxFit.cover,
                              )
                                   ),
//                                   child: Image.asset("Assets/celine.jpg",),
                                 ),
                                  Positioned(
                                      bottom: 0.0,
                                      right: 5,
                                      child: CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.blueGrey,
                                        child: GestureDetector(
                                          child: Icon(
                                            Icons.play_arrow,
                                            color: Colors.white,
                                            size: 18.0,
                                          ),
                                        ),
                                      ))
                                ],
                              ),
                              SizedBox(height: 4,),
                              Text(
                                "I believe",
                                style: TextStyle(
                                    color: Colors.white60,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                   ),
                              ),
                            ],
                          ),
                        ),


                      ],
                    ),

                  ),


                  Text(
                    "     Albums",
                    style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w700,
                        fontSize: 14.0),
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height:75,
                        width: 75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/album.jpg",
                              ),
                              fit: BoxFit.cover,
                            )
                        ),
//                                   child: Image.asset("Assets/celine.jpg",),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Head or Heart",
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.w700,
                                fontSize: 12.0),
                          ),
                          Text(
                            "2017",
                            style: TextStyle(
                                color: Colors.white60,
                                fontWeight: FontWeight.w700,
                                fontSize: 10.0),
                          ),


                        ],
                      ),
                      SizedBox(
                        width: 150,
                      ),

                      IconButton(
                          icon: Icon(
                            Icons.more_horiz,
                            color: Colors.white70,
                            size: 35,
                          ),
                          onPressed: null),
                    ],
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 50),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.amber[200],
                child: Icon(
                  Icons.play_arrow,
                  size: 24,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

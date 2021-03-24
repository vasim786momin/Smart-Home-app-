import 'package:flutter/material.dart';

import 'widget/RoomWidget.dart';
import 'widget/RoutineWidget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Color yellobg=Color(0xffFDA43C);
  Color blackbg= Color(0xff3F3F3F);
  Color yellotxt=Color(0xffFDA43C);
  Color blacktxt=Colors.black;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Colors.black, Colors.black.withOpacity(0.7)])
              ),
            ),
            //my house container
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
                  child: Column(
                    children: [

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('My House',
                              style: TextStyle(
                                  color: Color(0xffFDA43C),
                                fontSize: 16
                              ),),
                          ],
                        ),
                      ),

                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16),
                          ),
                          color: Color(0xffFDA43C),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Column(

                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text('22°C',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 22
                                          ),),
                                        Text('Avg House Temp')
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text('30°C',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 22
                                            )),
                                        Text('Outside Temp')
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 40,),
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(

                                      children: [
                                        Text('60%',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 22
                                            )),
                                        Text('Humadity')
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text('3',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 22
                                            )),
                                        Text('Devices on')
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Room',
                              style: TextStyle(
                                  color: Color(0xffFDA43C),
                                  fontSize: 16
                              ),),
                          ],
                        ),
                      ),

                      Column(
                        children: [
                          Row(
                            children: [
                              RoomWidget('Master Bedroom'),
                              SizedBox(width: 10,),
                              RoomWidget('Bedroom'),

                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              RoomWidget('Kids Room'),
                              SizedBox(width: 10,),
                              RoomWidget('Drawing Room'),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 40,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Routines',
                            style: TextStyle(
                                color: Color(0xffFDA43C),
                                fontSize: 16
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          RoutineWidget(yellobg: yellobg, blacktxt: blacktxt,img: Image.asset('assets/sunrise.png', height: 20,width: 20,),),

                          RoutineWidget(yellobg: blackbg, blacktxt: yellotxt,img: Image.asset('assets/out.png', height: 20,width: 20,),),

                          RoutineWidget(yellobg: blackbg, blacktxt: yellotxt,img: Image.asset('assets/in.png', height: 20,width: 20,),),

                        ],
                      ),
                      SizedBox(height: 10,),




                    ],
                  ),
                ),



                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Recently Using Device',
                            style: TextStyle(
                                color: Color(0xffFDA43C),
                                fontSize: 16
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 0,right: 0,bottom: 0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight:Radius.circular(0),bottomLeft: Radius.circular(25),bottomRight: Radius.circular(0)),
                          color: Color(0xffFDA43C),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(child: CircleAvatar(
                                backgroundColor:Color(0xff593A16).withOpacity(0.8),
                                  radius: 20,
                                  child: Image.asset('assets/lamp.png',height: 30,width: 30,))),
                              Expanded(child: Image.asset('assets/light_bulb.png',height: 30,width: 30,)),
                              Expanded(child: Image.asset('assets/air-conditioner.png',height: 30,width: 30,)),
                              Expanded(child: Image.asset('assets/fridge.png',height: 30,width: 30,))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }
}





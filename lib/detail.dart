import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  var room_name;
  Detail(this.room_name);

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

            Column(
              children: [

                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
                    child: Container(
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xffFDA43C),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(room_name),
                            Icon(Icons.arrow_drop_down)

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Image.asset('assets/fan.png',),
                SizedBox(height: 20,),
                Text('Pinterest Black Ceiling Fan',
                style: TextStyle(
                  color: Color(0xffFDA43C),
                  fontSize: 20
                ),
                ),

                SizedBox(height: 30,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 20),
                  child: Container(
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color(0xffFDA43C).withOpacity(0.2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/wind1.png',width: 15,),
                          Text('12',
                          style: TextStyle(
                            color: Color(0xffFDA43C),
                            fontSize: 28,
                            fontWeight: FontWeight.w700
                          ),
                          ),
                          Image.asset('assets/wind2.png',width: 15,),

                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Low',
                    style: TextStyle(
                      color: Color(0xffFDA43C)
                    ),),
                    SizedBox(width: 10,),
                    Stack(
                      children: [

                        Align(
                            alignment: Alignment.center,
                            child: Image.asset('assets/ellipse1.png'),),
                        Positioned(
                          top: 30,
                          left: 30,
                          child: Align(
                            alignment: Alignment.bottomCenter,
                              child: Image.asset('assets/ellipse2.png')),
                        ),
                        Positioned(
                          top: 42,
                          left: 42,
                          child: Align(
                            alignment: Alignment.center,
                              child: Image.asset('assets/ellipse3.png')),
                        ),

                        Positioned(
                          top: 90,
                          left: 90,
                          child: Align(
                              alignment: Alignment.center,
                              child: Image.asset('assets/switch.png')),
                        ),
                      ],
                    ),
                    SizedBox(width: 10,),
                    Text('High',
                    style: TextStyle(
                        color: Color(0xffFDA43C)
                    ),),
                  ],
                )

              ],
            )

          ],
        ),
      ),
    );
  }
}

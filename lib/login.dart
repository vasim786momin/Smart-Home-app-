import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Expanded(
            child: Container(
              child: Stack(
                children: [
                  Image.asset('assets/bg.png',
                  fit: BoxFit.fill,
                  width: MediaQuery.of(context).size.width,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [Color(0xffFDA43C).withOpacity(0.9), Colors.grey.withOpacity(0.1)])
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 18),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('START',style: TextStyle(color: Colors.black,fontSize: 30),),
                        Text('HOME',style: TextStyle(color: Colors.black,fontSize: 60,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),


                ],
              ),


            ),
          ),


          Expanded(
            child: Container(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [Colors.black, Colors.black.withOpacity(0.7)])
                    ),
                  ),

                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Sign into\nManage Your Devices & Accessory',
                          style: TextStyle(
                            color: Color(0xff8A7051),
                            fontSize: 16
                          ),
                          ),
                          SizedBox(height: 20,),

                          TextField(
                            decoration: new InputDecoration(
                              suffixIcon:Icon(Icons.email,
                                color: Color(0xffFDA43C),),

                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Color(0xffFDA43C), width: 1.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Color(0xffFDA43C), width: 1.0),
                              ),
                              hintText: 'Email',
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                  color: Color(0xffFDA43C)
                              ),
                              hintStyle: TextStyle(
                                color: Color(0xff593A16)
                              )
                            ),
                          ),
                          SizedBox(height: 10,),
                          TextField(
                            decoration: new InputDecoration(
                                suffixIcon:Icon(Icons.lock,
                                  color: Color(0xffFDA43C),),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Color(0xffFDA43C), width: 1.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Color(0xffFDA43C), width: 1.0),
                                ),
                                hintText: 'Password',
                                labelText: 'Password',
                                labelStyle: TextStyle(
                                    color: Color(0xffFDA43C)
                                ),
                                hintStyle: TextStyle(
                                    color: Color(0xff593A16)
                                )
                            ),
                          ),


                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Row(

                              children: [
                                Expanded(
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                                    },
                                    child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(10)),
                                        color: Color(0xffFDA43C),
                                        ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text('Log In',
                                            style: TextStyle(color: Colors.black),),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [

                                  Text('Dont have an account yet?',
                                  style: TextStyle(
                                    color: Color(0xff6C5A45)
                                  ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text('Create an account',
                                  style: TextStyle(
                                    color: Color(0xffFDA43C)
                                  ),)
                                ],
                              ),
                            ],
                          )

                        ],
                      ),
                    ),
                  )

                ],
              ),

            ),
          ),
        ],
      ),
    );
  }
}

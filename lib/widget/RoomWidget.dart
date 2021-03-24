import 'package:flutter/material.dart';
import 'package:smart_home/detail.dart';

class RoomWidget extends StatelessWidget {

  var room_name;

  RoomWidget(this.room_name);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Detail(room_name)));

        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Color(0xffFDA43C)
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(room_name),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
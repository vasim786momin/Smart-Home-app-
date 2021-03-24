import 'package:flutter/material.dart';

class RoutineWidget extends StatelessWidget {
  const RoutineWidget({
    Key key,
    @required this.yellobg,
    @required this.blacktxt,
    @required this.img
  }) : super(key: key);

  final Color yellobg;
  final Color blacktxt;
  final Image img;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            color: yellobg,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              img,
              SizedBox(height: 10,),
              Text('Moring',
                style: TextStyle(
                    color:blacktxt
                ),),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class OvalShape extends StatelessWidget {
const OvalShape({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
width: 58,
height: 58,
decoration: ShapeDecoration(
shape: OvalBorder(
side: BorderSide(width: 0.50, color: Color(0xFFA5A7AC)),
),
),
);
    
  }
}
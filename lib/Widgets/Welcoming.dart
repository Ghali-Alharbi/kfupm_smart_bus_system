import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Welcoming extends StatelessWidget{
  Welcoming({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
       padding: EdgeInsets.only(
        top: 20
       ),
      child: Container(
        
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage('https://cpg.kfupm.edu.sa/wp-content/uploads/2017/01/banner1.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.55),
            BlendMode.darken
          ),
          ),
          
          borderRadius: BorderRadius.circular(20),
           color: Colors.white,
        )
        ,
        width: 350,
        height: 150,
        child: Center( child: 
        Text(
          "Welcome {Normal User},",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30
          ),
        ),
        )
      ),
    );
  }
}
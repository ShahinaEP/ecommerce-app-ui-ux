import 'package:flutter/material.dart';

class Constants{
  String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  Color primaryValueColor = const Color(0xFF0071a8);
  Color primary2ndColor = const Color(0xFF14bbe2);
  Color color1 = Colors.grey.withOpacity(0.3);
  Color color2 = Colors.blueGrey.withOpacity(0.3);
  Color iconColors = Colors.orange;
  Color iconColors2 = Colors.deepOrange;
  TextStyle optionStyle = const
  TextStyle(fontSize: 30, fontWeight: FontWeight.w600);


  AppBar custom_appbar(icon1,String title,icon2, Color2) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading:IconButton(
        icon: Icon(icon1, color: Colors.black,),
        onPressed: (){},
      ),
      title: Text(title, style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontSize: 25
      ),),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(icon2, color: Color2,),
          onPressed: (){},
        ),

      ],

    );
  }
}
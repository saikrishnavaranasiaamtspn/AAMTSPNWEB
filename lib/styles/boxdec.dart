import 'package:flutter/material.dart';

class Boxdec {
  static InputDecoration inputboxdec() {
    InputDecoration c = InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
        ),
      ),
    );
    return c;
  }

  static BoxDecoration homepagecontainerdec() {
    return BoxDecoration(
      boxShadow: [
        BoxShadow(
            color: Color.fromRGBO(127, 127, 127, 0.25),
            offset: Offset(12, 12),
            blurRadius: 24)
      ],
      color: Colors.white,
    );
  }

  static BoxDecoration Teammemboxdec(){
    return BoxDecoration(
      gradient: LinearGradient(colors: [
        Color.fromRGBO(225, 132, 111, 1),Color.fromRGBO(67, 44, 88, 1)
      ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter

      ),
      boxShadow: [
        BoxShadow(
            color: Color.fromRGBO(127, 127, 127, 0.25),
            offset: Offset(12, 12),
            blurRadius: 24)
      ],
    );}


    static BoxDecoration jobsboxdec(){
      return BoxDecoration(
         color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(127, 127, 127, 0.25),
              offset: Offset(12, 12),
              blurRadius: 24)
        ],
      );
  }


}

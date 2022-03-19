import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class Txtsty {
  static TextStyle nunitoSanssty(FontWeight b, double c, Color d) {
    return GoogleFonts.getFont('Nunito Sans',
        textStyle: TextStyle(
          color: d,
          fontSize: c,
          fontWeight: b,
        ));
  }

  static TextStyle josefinSanssty(FontWeight b, double c, Color d) {
    return GoogleFonts.getFont('Josefin Sans',
        textStyle: TextStyle(
          color: d,
          fontSize: c,
          fontWeight: b,
        ));
  }

  static TextStyle montserratSty(FontWeight b, double c, Color d) {
    return GoogleFonts.getFont('Montserrat',
        textStyle: TextStyle(
          color: d,
          fontSize: c,
          fontWeight: b,
        ));
  }

  static TextStyle BeVietnamProSty(FontWeight b, double c, Color d) {
    return GoogleFonts.getFont('Be Vietnam Pro',
        textStyle: TextStyle(
          color: d,
          fontSize: c,
          fontWeight: b,
        ));
  }
}

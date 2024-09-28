import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';

const GreyColor = Color(0xffD9D9D9);
const BlackColor = Color(0xff000000);
const GreenColor = Color(0xff0FDA48);
const WhiteColor = Color(0xffFFFFFF);
const TextColorr = Color(0xff181E22);
const BlueColor = Color(0xff0D5EF9);

myStyle(double size, Color clr, [FontWeight? fw]){
  return GoogleFonts.poppins(
    fontSize: size,
    color: clr,
    fontWeight: fw

  );
}

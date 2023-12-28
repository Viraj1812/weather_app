import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header(
      {required this.degree,
      required this.weather,
      required this.date,
      super.key,
      required this.weatherImage});

  final String degree;
  final String weather;
  final String date;
  final String weatherImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          weatherImage,
          cacheWidth: 250,
          cacheHeight: 250,
        ),
        Text(
          degree,
          style: GoogleFonts.lato(fontSize: 100, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          weather,
          style:
              GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          date,
          style: GoogleFonts.montserrat(
              fontSize: 15, fontWeight: FontWeight.w500, color: Colors.grey),
        ),
      ],
    );
  }
}

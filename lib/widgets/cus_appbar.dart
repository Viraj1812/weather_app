import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CusAppbar extends StatelessWidget {
  const CusAppbar({
    Key? key,
    required this.cityName,
  }) : super(key: key);

  final String cityName;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return AppBar(
      title: Text(
        cityName,
        style: GoogleFonts.montserrat(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: isDarkMode ? Colors.white : Colors.black,
        ),
      ),
      centerTitle: true,
      leading:
          IconButton(onPressed: () {}, icon: const Icon(Icons.location_pin)),
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
    );
  }
}

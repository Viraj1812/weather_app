import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CusAppbar extends StatelessWidget {
  const CusAppbar(
      {required this.cityName,
      required this.leadingIcon,
      required this.actionIcon,
      super.key});
  final String cityName;
  final String leadingIcon;
  final String actionIcon;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        cityName,
        style: GoogleFonts.montserrat(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: IconButton(
        onPressed: () {},
        icon: leadingIcon != ''
            ? Image.asset(
                leadingIcon,
                cacheHeight: 24,
                cacheWidth: 24,
              )
            : const Icon(Icons.arrow_back),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            actionIcon,
            cacheHeight: 24,
            cacheWidth: 24,
          ),
        )
      ],
    );
  }
}

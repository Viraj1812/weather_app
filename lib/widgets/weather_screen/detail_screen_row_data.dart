import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RowData extends StatelessWidget {
  const RowData({
    Key? key,
    required this.day,
    required this.weatherImage,
    required this.weather,
    required this.degreerange,
  }) : super(key: key);

  final String day;
  final String weatherImage;
  final String weather;
  final String degreerange;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 8),
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              day,
              style: GoogleFonts.montserrat(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: AlignmentDirectional.center,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  weatherImage,
                  cacheWidth: 24,
                  cacheHeight: 24,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  weather,
                  style: GoogleFonts.montserrat(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(right: 8),
            alignment: AlignmentDirectional.centerEnd,
            child: Text(
              degreerange,
              style: GoogleFonts.montserrat(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
        )
      ],
    );
  }
}

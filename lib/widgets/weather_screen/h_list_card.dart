import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whether_app/model/first_screen_model/h_list_model.dart';

class HCard extends StatelessWidget {
  const HCard({
    Key? key,
    required this.time,
    required this.day,
    required this.weatherImage,
    required this.degree,
    required this.ls,
    required this.index,
    required this.isSelected,
  }) : super(key: key);

  final String time;
  final String day;
  final String weatherImage;
  final String degree;
  final List<TimeWeather> ls;
  final int index;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: isSelected
                      ? const BorderRadius.all(Radius.circular(16))
                      : const BorderRadius.all(Radius.circular(0)),
                  color: isSelected
                      ? isDarkMode
                          ? Colors.purple[800]
                          : Colors.blue
                      : Colors.transparent,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 16, bottom: 16, left: 20, right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        time,
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          color: isDarkMode ? Colors.white : Colors.black,
                        ),
                      ),
                      Text(
                        day,
                        style: GoogleFonts.montserrat(
                          color: isDarkMode ? Colors.white : Colors.black,
                        ),
                      ),
                      Image.asset(
                        weatherImage,
                        width: 50,
                        height: 50,
                      ),
                      Text(
                        '$degree°C',
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: isDarkMode ? Colors.white : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              if (index < ls.length - 1)
                Container(
                  width: 1.0,
                  height: 60.0,
                  color: isDarkMode
                      ? Colors.grey[600]
                      : Colors.grey[300], // Divider color
                ),
            ],
          ),
        ),
      ],
    );
  }
}

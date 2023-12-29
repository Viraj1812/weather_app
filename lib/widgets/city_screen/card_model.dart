import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({
    Key? key,
    required this.degree,
    required this.weather,
    required this.cityName,
    required this.time,
    required this.weatherImage,
    required this.isDarkMode,
  }) : super(key: key);

  final String degree;
  final String weather;
  final String cityName;
  final String time;
  final String weatherImage;
  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isDarkMode ? Colors.grey[800] : Colors.white,
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 150,
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '$degree°C ',
                          style: GoogleFonts.montserrat(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: isDarkMode ? Colors.white : Colors.black),
                        ),
                        TextSpan(
                          text: weather,
                          style: GoogleFonts.montserrat(
                              fontSize: 18,
                              color:
                                  isDarkMode ? Colors.grey[400] : Colors.grey,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    cityName,
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: isDarkMode ? Colors.white : Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Time in the city: $time',
                    style: GoogleFonts.montserrat(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: isDarkMode ? Colors.white70 : Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: AlignmentDirectional.centerEnd,
              child: Image.asset(
                weatherImage,
                cacheHeight: 100,
                cacheWidth: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

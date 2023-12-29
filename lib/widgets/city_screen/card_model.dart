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
  }) : super(key: key);

  final String degree;
  final String weather;
  final String cityName;
  final String time;
  final String weatherImage;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.primary,
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
                              color: Theme.of(context).colorScheme.secondary),
                        ),
                        TextSpan(
                          text: weather,
                          style: GoogleFonts.montserrat(
                              fontSize: 18,
                              color: Theme.of(context).colorScheme.secondary,
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
                      color: Theme.of(context).colorScheme.secondary,
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
                      color: Theme.of(context).colorScheme.secondary,
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

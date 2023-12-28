import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whether_app/model/first_screen_model/h_list_model.dart';

class HCard extends StatelessWidget {
  const HCard({
    super.key,
    required this.time,
    required this.day,
    required this.weatherImage,
    required this.degree,
    required this.ls,
    required this.index,
    required this.isSelected,
  });

  final String time;
  final String day;
  final String weatherImage;
  final String degree;
  final List<TimeWeather> ls;
  final int index;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
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
                      ? const BorderRadius.all(Radius.circular(8))
                      : const BorderRadius.all(Radius.circular(0)),
                  color: isSelected ? Colors.blue : Colors.transparent,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        time,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(day),
                      Image.asset(
                        weatherImage,
                        width: 50,
                        height: 50,
                      ),
                      Text(
                        '$degree°C',
                        style: GoogleFonts.montserrat(
                            fontSize: 18, fontWeight: FontWeight.bold),
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
                  color: Colors.grey, // Divider color
                ),
            ],
          ),
        ),
      ],
    );
  }
}

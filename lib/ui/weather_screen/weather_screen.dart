import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:whether_app/widgets/weather_screen/footer.dart';
import 'package:whether_app/widgets/weather_screen/header.dart';
import 'package:whether_app/widgets/weather_screen/horizontal_time_list.dart';

class WeatherScreen extends StatelessWidget {
  WeatherScreen({Key? key}) : super(key: key);
  final DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('EEEE, MMMM d').format(now);

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Header(
            degree: '20',
            weather: 'Cloudy',
            date: formattedDate,
            weatherImage: 'assets/images/cloud.png',
          ),
          const SizedBox(
            height: 10,
          ),
          const HorizontalList(),
          const SizedBox(
            height: 10,
          ),
          const Footer(
            sr: '05:12',
            ss: '19:52',
          ),
        ],
      ),
    );
  }
}

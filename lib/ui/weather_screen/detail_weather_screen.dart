import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whether_app/widgets/weather_screen/detail_screen_row_data.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    // Check the current theme
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Moscow',
          style: GoogleFonts.montserrat(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: isDarkMode ? Colors.white : Colors.black,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: Column(
        children: [
          Card(
            elevation: 3.0,
            margin: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/cloudy.png',
                        cacheWidth: 48,
                        cacheHeight: 48,
                      ),
                      const Text('47%'),
                      const Text('Cloudcover'),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/temperature.png',
                        cacheWidth: 48,
                        cacheHeight: 48,
                      ),
                      const Text('999hPa'),
                      const Text('Pressure'),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/uv.png',
                        cacheWidth: 48,
                        cacheHeight: 48,
                      ),
                      const Text('1'),
                      const Text('UV-index'),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Card(
            elevation: 3.0,
            margin: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const RowData(
                    day: 'Monday',
                    weatherImage: 'assets/images/cloud.png',
                    weather: 'Overcast',
                    degreerange: '13°C/17°C'),
                const SizedBox(
                  height: 40,
                ),
                const RowData(
                    day: 'Tuesday',
                    weatherImage: 'assets/images/cloud.png',
                    weather: 'Overcast',
                    degreerange: '14°C/21°C'),
                const SizedBox(
                  height: 40,
                ),
                const RowData(
                    day: 'Wednesday',
                    weatherImage: 'assets/images/thunder.png',
                    weather: 'Overcast',
                    degreerange: '12°C/19°C'),
                const SizedBox(
                  height: 40,
                ),
                const RowData(
                    day: 'Thursday',
                    weatherImage: 'assets/images/cloud.png',
                    weather: 'Overcast',
                    degreerange: '13°C/18°C'),
                const SizedBox(
                  height: 40,
                ),
                const RowData(
                    day: 'Friday',
                    weatherImage: 'assets/images/cloud.png',
                    weather: 'Overcast',
                    degreerange: '12°C/19°C'),
                const SizedBox(
                  height: 40,
                ),
                const RowData(
                    day: 'Saturday',
                    weatherImage: 'assets/images/cloud.png',
                    weather: 'Overcast',
                    degreerange: '11°C/20°C'),
                const SizedBox(
                  height: 40,
                ),
                const RowData(
                    day: 'Sunday',
                    weatherImage: 'assets/images/cloud.png',
                    weather: 'Overcast',
                    degreerange: '10°C/20°C'),
                const SizedBox(
                  height: 40,
                ),
                const Divider(
                  color: Colors.grey,
                  height: 1,
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  '12 - day weather forecast',
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:whether_app/constants/constants.dart';
import 'package:whether_app/ui/weather_screen/detail_weather_screen.dart';
import 'package:whether_app/widgets/weather_screen/h_list_card.dart';

class HorizontalList extends StatefulWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  State<HorizontalList> createState() => _HorizontalListState();
}

class _HorizontalListState extends State<HorizontalList> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: MediaQuery.of(context).size.width,
      height: 172,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Card(
        color: isDarkMode ? Colors.grey[800] : Colors.white,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: weatherList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              onDoubleTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailScreen(),
                ),
              ),
              child: HCard(
                time: '${weatherList[index].time.hour}:00',
                day: weatherList[index].day,
                weatherImage: weatherList[index].weatherImage,
                degree: weatherList[index].degree.toString(),
                isSelected: selectedIndex == index,
                ls: weatherList,
                index: index,
              ),
            );
          },
        ),
      ),
    );
  }
}

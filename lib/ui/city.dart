import 'package:flutter/material.dart';
import 'package:whether_app/constants/constants.dart';
import 'package:whether_app/model/second_screen_model/list_item_model.dart';
import 'package:whether_app/widgets/city_screen/card_model.dart';

class CityScreen extends StatefulWidget {
  const CityScreen({super.key});

  @override
  State<CityScreen> createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: diffCity.length,
        itemBuilder: (context, index) {
          WeatherInfo weatherInfo = diffCity[index];
          return WeatherCard(
            degree: weatherInfo.degree,
            weather: weatherInfo.weather,
            cityName: weatherInfo.cityName,
            time: weatherInfo.time,
            weatherImage: weatherInfo.weatherImage,
          );
        },
      ),
      floatingActionButton: Container(
        width: 60.0, // Adjust the size of the container as needed
        height: 60.0,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius:
                BorderRadius.circular(12.0), // Adjust the border radius
            color: Colors.purple),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.transparent,
          elevation: 0.0, // Remove the default elevation
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

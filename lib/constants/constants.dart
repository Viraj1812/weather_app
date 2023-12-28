import 'package:whether_app/model/first_screen_model/h_list_model.dart';
import 'package:whether_app/model/second_screen_model/list_item_model.dart';

final List<TimeWeather> weatherList = [
  TimeWeather(
    time: DateTime.now(),
    day: 'Mon',
    weatherImage: 'assets/images/cloudy_day.png',
    degree: 25,
  ),
  TimeWeather(
    time: DateTime.now().add(const Duration(hours: 1)),
    day: 'Mon',
    weatherImage: 'assets/images/cloudy_night.png',
    degree: 20,
  ),
  TimeWeather(
    time: DateTime.now().add(const Duration(hours: 2)),
    day: 'Mon',
    weatherImage: 'assets/images/cloudy_night.png',
    degree: 18,
  ),
  TimeWeather(
    time: DateTime.now().add(const Duration(hours: 3)),
    day: 'Mon',
    weatherImage: 'assets/images/cloudy_night.png',
    degree: 20,
  ),
  TimeWeather(
    time: DateTime.now().add(const Duration(hours: 4)),
    day: 'Mon',
    weatherImage: 'assets/images/cloudy_night.png',
    degree: 20,
  ),
  TimeWeather(
    time: DateTime.now().add(const Duration(hours: 5)),
    day: 'Mon',
    weatherImage: 'assets/images/cloudy_night.png',
    degree: 18,
  ),
];

List<WeatherInfo> diffCity = [
  WeatherInfo(
    degree: '20',
    weather: 'Cloudy',
    cityName: 'Seoul',
    time: '01:05',
    weatherImage: 'assets/images/cloudy.png',
  ),
  WeatherInfo(
    degree: '31',
    weather: 'Overcast',
    cityName: 'New York',
    time: '01:05',
    weatherImage: 'assets/images/cloud.png',
  ),
  WeatherInfo(
    degree: '26',
    weather: 'Clear Sky',
    cityName: 'Beijing',
    time: '00:05',
    weatherImage: 'assets/images/clear_night.png',
  )
];

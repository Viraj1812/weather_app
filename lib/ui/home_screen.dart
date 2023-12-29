import 'package:flutter/material.dart';
import 'package:whether_app/ui/city.dart';
import 'package:whether_app/ui/setting.dart';
import 'package:whether_app/ui/weather_screen/weather_screen.dart';
import 'package:whether_app/widgets/cus_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  var widgetList = [WeatherScreen(), const CityScreen(), const Settings()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Check the current theme
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CusAppbar(
          cityName: 'Moscow',
        ),
      ),
      body: widgetList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Theme.of(context).colorScheme.secondary,
        backgroundColor: isDarkMode ? Colors.black : Colors.white,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              isDarkMode
                  ? 'assets/icons/weather_logo.png'
                  : 'assets/icons/weather_logo.png',
              cacheWidth: 24,
              cacheHeight: 24,
            ),
            label: 'Weather',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              isDarkMode ? 'assets/images/city.png' : 'assets/images/city.png',
              cacheWidth: 24,
              cacheHeight: 24,
            ),
            label: 'City',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              isDarkMode
                  ? 'assets/images/setting.png'
                  : 'assets/images/setting.png',
              cacheWidth: 24,
              cacheHeight: 24,
            ),
            label: 'Settings',
          ),
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: ListView(
        children: [
          Card(
            elevation: 3.0,
            margin: const EdgeInsets.all(8.0),
            color: isDarkMode ? Colors.grey[800] : Colors.white,
            child: ListTile(
              title: Text(
                'Appearance',
                style: GoogleFonts.montserrat(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
              leading: Image.asset(
                isDarkMode
                    ? 'assets/images/appearance.png'
                    : 'assets/images/appearance.png',
              ),
              trailing: const Icon(Icons.arrow_forward, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}

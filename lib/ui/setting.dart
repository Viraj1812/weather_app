import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Card(
            elevation: 3.0,
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(
                'Appearance',
                style: GoogleFonts.montserrat(
                    fontSize: 18, fontWeight: FontWeight.w500),
              ),
              leading: Image.asset('assets/images/appearance.png'),
              trailing: const Icon(Icons.arrow_forward),
            ),
          ),
        ],
      ),
    );
  }
}

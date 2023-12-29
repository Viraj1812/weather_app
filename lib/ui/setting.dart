import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:whether_app/provider/theme_provider.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Card(
            elevation: 3.0,
            margin: const EdgeInsets.all(8.0),
            color: Theme.of(context).colorScheme.primary,
            child: InkWell(
              onTap: () {
                _showThemeSelectionDialog(context);
              },
              child: ListTile(
                title: Text(
                  'Appearance',
                  style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.secondary),
                ),
                leading: Image.asset(
                  'assets/images/appearance.png',
                ),
                trailing: const Icon(Icons.arrow_forward, color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showThemeSelectionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: const Text('Select Theme'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Consumer(
                builder: (context, ThemeNotifier notifier, child) => ListTile(
                  title: const Text('Light Theme'),
                  onTap: () {
                    if (notifier.darkTheme == true) {
                      notifier.toggleTheme(); // Change to light theme
                    }
                    Navigator.pop(dialogContext);
                  },
                ),
              ),
              Consumer(
                builder: (context, ThemeNotifier notifier, child) => ListTile(
                  title: const Text('Dark Theme'),
                  onTap: () {
                    if (notifier.darkTheme == false) {
                      notifier.toggleTheme(); // Change to light theme
                    }
                    Navigator.pop(dialogContext);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

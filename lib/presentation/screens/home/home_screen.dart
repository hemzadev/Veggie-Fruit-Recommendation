import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../config/theme/theme_provider.dart';
import '../account/account_screen.dart';
import '../camera/camera_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  Widget _getCurrentScreen() {
    switch (_selectedIndex) {
      case 0:
        return CameraScreen();
      case 1:
        return AccountScreen();
      case 2:
        return Container(); // Saved screen placeholder
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Switcher'),
        actions: [
          Consumer<ThemeProvider>(
            builder: (context, themeProvider, child) {
              return IconButton(
                icon: Icon(
                  themeProvider.isDarkMode ? Icons.light_mode : Icons.dark_mode,
                ),
                onPressed: () {
                  Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
                },
              );
            },
          ),
        ],
      ),
      body: _getCurrentScreen(),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.camera_alt_outlined),
            selectedIcon: Icon(Icons.camera_alt),
            label: 'Camera',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'Account',
          ),
          NavigationDestination(
            icon: Icon(Icons.bookmark_outline),
            selectedIcon: Icon(Icons.bookmark),
            label: 'Saved',
          ),
        ],
      ),
    );
  }
} 
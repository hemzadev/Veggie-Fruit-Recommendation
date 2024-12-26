import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_recommendation_app/config/theme/app_theme.dart';
import 'package:flutter_recommendation_app/config/theme/theme_provider.dart';
import 'package:flutter_recommendation_app/presentation/screens/home/home_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Your App',
          theme: AppTheme.lightTheme(),
          darkTheme: AppTheme.darkTheme(),
          themeMode: themeProvider.isDarkMode ? ThemeMode.dark : ThemeMode.light,
          home: HomeScreen(),
        );
      },
    );
  }
}

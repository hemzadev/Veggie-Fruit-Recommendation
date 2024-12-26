import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: ColorScheme.light(
        primary: Color(0xFF007AFF),
        secondary: Color(0xFF5856D6),
        surface: Colors.white,
        background: Color(0xFFF2F2F7),
        error: Color(0xFFFF3B30),
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: Colors.black,
        onBackground: Colors.black,
        onError: Colors.white,
      ),
      
      // Card Theme
      cardTheme: CardTheme(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        color: Colors.white,
      ),
      
      // AppBar Theme
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Color(0xFF007AFF)),
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 17,
          fontWeight: FontWeight.w600,
        ),
      ),
      
      // Bottom Navigation Bar Theme
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xFF007AFF),
        unselectedItemColor: Color(0xFF8E8E93),
        type: BottomNavigationBarType.fixed,
        elevation: 8,
      ),
      
      // Text Theme
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        headlineMedium: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        titleLarge: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        bodyLarge: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
        bodyMedium: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
        labelMedium: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.normal,
          color: Color(0xFF8E8E93),
        ),
      ),
      
      // Input Decoration Theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Color(0xFFF2F2F7),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Color(0xFF007AFF)),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
      
      // Button Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF007AFF),
          foregroundColor: Colors.white,
          elevation: 0,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.dark(
        primary: Color(0xFF0A84FF),
        secondary: Color(0xFF5E5CE6),
        surface: Color(0xFF1C1C1E),
        background: Color(0xFF000000),
        error: Color(0xFFFF453A),
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: Colors.white,
        onBackground: Colors.white,
        onError: Colors.black,
      ),
      cardTheme: CardTheme(
        color: Color(0xFF1C1C1E),
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xFF1C1C1E),
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Color(0xFF0A84FF)),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 17,
          fontWeight: FontWeight.w600,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Color(0xFF1C1C1E),
        selectedItemColor: Color(0xFF0A84FF),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        elevation: 8,
      ),
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        headlineMedium: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        titleLarge: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        bodyLarge: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.normal,
          color: Colors.white,
        ),
        bodyMedium: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.normal,
          color: Colors.white,
        ),
      ),
    );
  }
} 
   // lib/main.dart
   import 'package:flutter/material.dart';
   import 'package:provider/provider.dart';
   import 'package:firebase_core/firebase_core.dart'; // Import Firebase core
   import 'package:flutter_recommendation_app/config/theme/app_theme.dart';
   import 'package:flutter_recommendation_app/config/theme/theme_provider.dart';
   import 'package:flutter_recommendation_app/presentation/screens/auth/auth_page.dart'; // Import your AuthPage
   import 'firebase_options.dart'; // Import your generated Firebase options

   void main() async {
     WidgetsFlutterBinding.ensureInitialized(); // Ensure binding is initialized
     await Firebase.initializeApp(
       options: DefaultFirebaseOptions.currentPlatform, // Use DefaultFirebaseOptions for initialization
     );
     
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
       return MaterialApp(
         debugShowCheckedModeBanner: false,
         title: 'Your App',
         theme: AppTheme.lightTheme(),
         darkTheme: AppTheme.darkTheme(),
         home: AuthPage(), // Set the AuthPage as the home
       );
     }
   }
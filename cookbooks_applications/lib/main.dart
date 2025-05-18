import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'register_screen.dart';
import 'dashboard_screen.dart';
import "search_screen.dart";
import "details_recipes_screen.dart";
import "add_recipes.dart";
import "profile_screen.dart";


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Arial',
      ),
      initialRoute: '/login',  
      routes: {
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/dashboard': (context) => const Dashboard(),
        '/search': (context) =>  SearchPage(),  
        '/details': (context) => DetailsRecipes(),
        '/add': (context) => RecipeCreatePage(),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}

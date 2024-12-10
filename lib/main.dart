import 'package:flutter/material.dart';
import 'screens/poultry_management_screen.dart'; // Import the screen

void main() {
  runApp(const PoultryApp());
}

class PoultryApp extends StatelessWidget {
  const PoultryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug mode banner
      theme: ThemeData(
        primarySwatch: Colors.orange, // Sets the orange theme
      ),
      home: const PoultryManagementScreen(), // Set this as the home screen
    );
  }
}

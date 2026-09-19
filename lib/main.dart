import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const PahlawanApp());
}

class PahlawanApp extends StatelessWidget {
  const PahlawanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pahlawan Nasional',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
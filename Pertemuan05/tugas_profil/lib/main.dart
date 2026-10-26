import 'package:flutter/material.dart';

import 'home_screen.dart'; // Impor file home_screen.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Pertemuan 5',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: const HomeScreen(), // Mengarahkan ke HomeScreen Anda
      debugShowCheckedModeBanner: false,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:new_20240305/UI/hp.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Использование ColorScheme для определения пользовательских цветов
    final ThemeData theme = ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFFD237A4), // Основной цвет темы
        primary: const Color(0xFFD237A4), // Цвет AppBar и кнопки
        background: const Color(0xFFF7D5ED), // Цвет фона Scaffold
      ),
      useMaterial3: true,
    );

    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
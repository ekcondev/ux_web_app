import 'package:flutter/material.dart';
import 'screens/register_medicine_screen.dart';
import 'screens/home_screen.dart';
import 'screens/history_page_1_screen.dart';
import 'screens/history_page_2_screen.dart';
import 'screens/register_error_screen.dart';
import 'screens/register_success_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
      ),
      debugShowCheckedModeBanner: false,
      title: 'MediAlerta',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/register_medicine': (context) => RegistrarMedicamentoScreen(),
        '/register_medicine_error':
            (context) => RegistrarMedicamentoErrorScreen(),
        '/register_medicine_success':
            (context) => RegistrarMedicamentoExitosoScreen(),
        '/history_page_1': (context) => HistorialTomas1Screen(),
        '/history_page_2': (context) => HistorialTomas2Screen(),
      },
    );
  }
}

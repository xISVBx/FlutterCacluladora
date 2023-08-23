import 'package:calculadora/Config/theme/app_theme.dart';
import 'package:calculadora/src/providers/calculadora_provider.dart';
import 'package:calculadora/src/screens/calculadora_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()=> runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => CalculadoraProvider())],
      child:MaterialApp(
        title: 'Calculadora',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 1).theme(),
        home: Calculator(),
      )
    );
  }
}
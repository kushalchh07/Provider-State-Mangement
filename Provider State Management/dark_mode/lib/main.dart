import 'package:dark_mode/provider/themechanger_provider.dart';
import 'package:dark_mode/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => ThemeChangerProvider(),
        child: Builder(builder: (BuildContext context) {
          final themeProvider = Provider.of<ThemeChangerProvider>(context);
          return MaterialApp(
            title: 'Flutter Demo',
            themeMode: themeProvider.themeMode,
            theme: ThemeData(
              brightness: Brightness.light,
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            darkTheme: ThemeData(brightness: Brightness.dark),
            home: HomeScreen(),
            debugShowCheckedModeBanner: false,
          );
        }));
  }
}

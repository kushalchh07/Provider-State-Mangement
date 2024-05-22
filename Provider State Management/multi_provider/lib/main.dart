import 'package:flutter/material.dart';
import 'package:multi_provider/homepage.dart';
import 'package:multi_provider/provider/value_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ValueProvider())],
      child: const MaterialApp(
        title: 'Flutter Demo',
        home: const HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

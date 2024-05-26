import 'package:favourite_app/With%20Provider/fav.dart';
import 'package:favourite_app/With%20Provider/favourite_provider.dart';
import 'package:favourite_app/With%20SetState/favourite.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => FavouriteItemProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        home: HomeScreen(),
      ),
    );
  }
}

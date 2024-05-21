import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learning/provider/count_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context,
        listen:
            false); //listen false will help to rebuild only the required widget
    print("object");
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
        centerTitle: true,
      ),
      body: Center(
        child: Consumer<CountProvider>(
          builder: (context, value, child) {
            return Text(
              countProvider.count.toString(),
              style: TextStyle(fontSize: 20),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider
              .setCount(); // accessing the setCount method of CountProvider class
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

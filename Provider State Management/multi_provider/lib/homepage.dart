import 'package:flutter/material.dart';
import 'package:multi_provider/provider/value_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Consumer<ValueProvider>(builder: (context, valueProvider, child) {
              return Slider(
                  min: 0,
                  max: 1,
                  value: valueProvider.value,
                  onChanged: (val) {
                    valueProvider.getValue(val);
                  });
            }),
            Consumer<ValueProvider>(builder: (context, valueProvider, child) {
              return Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.green.withOpacity(valueProvider.value)),
                  )),
                  Expanded(
                      child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.red.withOpacity(valueProvider.value)),
                  ))
                ],
              );
            })
          ],
        ),
      ),
    );
  }
}

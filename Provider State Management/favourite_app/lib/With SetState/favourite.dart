import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSelected = false;
  List<int> items = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite App"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        items.add(index);
                        setState(() {
                          isSelected = !isSelected;
                        });
                      },
                      title: Text(
                        "Item" + index.toString(),
                      ),
                      trailing: Icon(items.contains(index)
                          ? Icons.favorite
                          : Icons.favorite_border_outlined),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

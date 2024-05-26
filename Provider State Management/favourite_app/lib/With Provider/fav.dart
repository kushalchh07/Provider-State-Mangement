import 'package:favourite_app/With%20Provider/favourite_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    print("build");

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
                    return Consumer<FavouriteItemProvider>(
                        builder: (context, value, child) {
                      return ListTile(
                        onTap: () {
                          if (value.items.contains(index)) {
                            value.remove(index);
                          } else {
                            value.getItem(index);
                          }
                        },
                        title: Text(
                          "Item" + index.toString(),
                        ),
                        trailing: Icon(value.items.contains(index)
                            ? Icons.favorite
                            : Icons.favorite_border_outlined),
                      );
                    });
                  }),
            )
          ],
        ),
      ),
    );
  }
}

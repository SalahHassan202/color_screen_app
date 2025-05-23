import 'package:color_screen/colors/color_list.dart';
import 'package:color_screen/screens/colors_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[300],
        centerTitle: true,
        title: Text(
          "Color Screen",
          style: TextStyle(
            fontSize: 42,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 15,
        mainAxisSpacing: 10,
        padding: EdgeInsets.all(12),
        children:
            colorsList
                .map(
                  (colorItem) => InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ColorsPage(colorItem),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: colorItem,
                      ),
                    ),
                  ),
                )
                .toList(),
      ),
    );
  }
}

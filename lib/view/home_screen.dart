import 'package:color_index_provider/controller/home_provider.dart';
import 'package:color_index_provider/helper/sized.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<HomeProvider>(
          builder: (context, value, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: value.colors[value.currentIndex],
                ),
                sized100,
                GestureDetector(
                  onTap: () {
                    value.updatecolor();
                  },
                  child: Container(
                    height: 50,
                    width: 80,
                    color: Colors.red,
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

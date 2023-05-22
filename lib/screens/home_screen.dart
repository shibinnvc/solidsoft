import 'dart:math';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
        });
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Solid Lints',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        backgroundColor: color,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Hello there',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('RED :${color.red}'),
              Text('BLUE :${color.blue}'),
              Text('GREEN :${color.green}'),
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

var _leftImageChange = 1;
var _rightImageChange = 2;

class _HomepageState extends State<Homepage> {
  void _changeImage() {
    setState(() {
      _leftImageChange = Random().nextInt(5) + 1;
      _rightImageChange = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 3, 22, 37),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Ask Me', style: TextStyle(fontSize: 28)),
          backgroundColor: const Color.fromARGB(255, 3, 22, 37),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () => _changeImage(),
                  child: Image.asset('assets/ball$_leftImageChange.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () => _changeImage(),
                  child: Image.asset('assets/ball$_rightImageChange.png'),
                ),
              ),
            ],
          ),
        ));
  }
}

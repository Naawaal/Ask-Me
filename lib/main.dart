import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

void main() => runApp(const AskMe());

class AskMe extends StatelessWidget {
  const AskMe({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ask Me ',
      home: Homepage(),
    );
  }
}

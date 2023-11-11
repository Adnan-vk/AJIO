import 'package:ajio/screens/widgets.dart';
import 'package:flutter/material.dart';

class trnd extends StatefulWidget {
  const trnd({super.key});

  @override
  State<trnd> createState() => _trndState();
}

class _trndState extends State<trnd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
    );
  }
}
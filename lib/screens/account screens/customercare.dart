import 'package:flutter/material.dart';

class Customercare extends StatefulWidget {
  const Customercare({super.key});

  @override
  State<Customercare> createState() => _CustomercareState();
}

class _CustomercareState extends State<Customercare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Customer Care"),
      ),
    );
  }
}
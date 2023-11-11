import 'package:flutter/material.dart';

class privacy extends StatefulWidget {
  const privacy({super.key});

  @override
  State<privacy> createState() => _privacyState();
}

class _privacyState extends State<privacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("We Respect Your Privacy"),
      ),
    );
  }
}
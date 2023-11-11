import 'package:flutter/material.dart';

class proTC extends StatefulWidget {
  const proTC({super.key});

  @override
  State<proTC> createState() => _proTCState();
}

class _proTCState extends State<proTC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Promotions Terms and Conditions'),
      ),
    );
  }
}
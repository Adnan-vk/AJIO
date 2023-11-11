import 'package:flutter/material.dart';

class tC extends StatefulWidget {
  const tC({super.key});

  @override
  State<tC> createState() => _tCState();
}

class _tCState extends State<tC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms and Conditions'),
      ),
    );
  }
}
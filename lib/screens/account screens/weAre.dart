import 'package:flutter/material.dart';

class weAre extends StatefulWidget {
  const weAre({super.key});

  @override
  State<weAre> createState() => _weAreState();
}

class _weAreState extends State<weAre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Who We Are"),
      ),
    );
  }
}
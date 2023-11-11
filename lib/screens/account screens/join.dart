import 'package:flutter/material.dart';

class join extends StatefulWidget {
  const join({super.key});

  @override
  State<join> createState() => _joinState();
}

class _joinState extends State<join> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Join Our Team'),
      ),
    );
  }
}
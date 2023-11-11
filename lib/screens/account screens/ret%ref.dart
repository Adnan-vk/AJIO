import 'package:flutter/material.dart';

class retRef extends StatefulWidget {
  const retRef({super.key});

  @override
  State<retRef> createState() => _retRefState();
}

class _retRefState extends State<retRef> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Returns and Refund Policies'),
      ),
    );
  }
}
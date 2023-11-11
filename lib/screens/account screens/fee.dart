import 'package:flutter/material.dart';

class fee extends StatefulWidget {
  const fee({super.key});

  @override
  State<fee> createState() => _feeState();
}

class _feeState extends State<fee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fees And Payments"),
      ),
    );
  }
}
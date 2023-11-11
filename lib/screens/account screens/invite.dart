import 'package:flutter/material.dart';

class invite extends StatefulWidget {
  const invite({super.key});

  @override
  State<invite> createState() => _inviteState();
}

class _inviteState extends State<invite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Invite Friends And Earn"),
      ),
    );
  }
}
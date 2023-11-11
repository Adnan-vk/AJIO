import 'package:flutter/material.dart';

class howRedeem extends StatefulWidget {
  const howRedeem({super.key});

  @override
  State<howRedeem> createState() => _howRedeemState();
}

class _howRedeemState extends State<howRedeem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("How Do I Redeem My Coupons"),
      ),
    );
  }
}
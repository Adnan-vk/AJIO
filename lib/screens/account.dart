
import 'package:ajio/screens/account%20screens/T&C.dart';
import 'package:ajio/screens/account%20screens/coupon.dart';
import 'package:ajio/screens/account%20screens/customercare.dart';
import 'package:ajio/screens/account%20screens/fee.dart';
import 'package:ajio/screens/account%20screens/how_redeem.dart';
import 'package:ajio/screens/account%20screens/how_to_return.dart';
import 'package:ajio/screens/account%20screens/invite.dart';
import 'package:ajio/screens/account%20screens/join.dart';
import 'package:ajio/screens/account%20screens/notifications.dart';
import 'package:ajio/screens/account%20screens/privacy.dart';
import 'package:ajio/screens/account%20screens/proTC.dart';
import 'package:ajio/screens/account%20screens/ret%25ref.dart';
import 'package:ajio/screens/account%20screens/weAre.dart';
import 'package:flutter/material.dart';

class account extends StatefulWidget {
  const account({super.key});

  @override
  State<account> createState() => _accountState();
}
final accitem=[
  "Customer Care",
  "Invite Friends & Earn",
  "Coupon Quest",
  "Notifications",
  "How To Return",
  "How Do I Redeem My Coupons?",
  "Terms & Conditions",
  "Promotions Terms & Connditions",
  "Returns & Refund Policy",
  "We Respect Your Privacy",
  "Fees % Payments",
  "Who We Are",
  "Join Our Team",
];

final accscreens =[
  Customercare(),
  invite(),
  Coupon(),
  notification(),
  howReturn(),
  howRedeem(),
  tC(),
  proTC(),
  retRef(),
  privacy(),
  fee(),
  weAre(),
  join(),
];

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("My Account",style: TextStyle(color: Colors.black,),),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
              color: Color.fromARGB(255, 223, 223, 223),
              child: Row(
                children: [
                  Align(alignment: Alignment.center,),
                  Padding(padding: EdgeInsets.only(
                    top: 90,
                    bottom: 90,
                    left: 20
                  )),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Icon(Icons.person_outline),
                    radius: 40,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 200,
                    height: 40,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.black)
                      ),
                      onPressed: (){}, child: Text("Sign in / Join"),
                      ),
                  )
                ],
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: ((context, index) => ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return accscreens[index];
                  }));
                },
                title: Text(accitem[index]),
                trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,color: Colors.black,),
              )), 
              separatorBuilder: (context, index) => Divider(), 
              itemCount: accitem.length),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text("Version 9.4.0 Build 3085",style: TextStyle(color: Color.fromARGB(255, 198, 196, 196)),),
              ),
              SizedBox(
                height: 10,
              )
          ],
        ),
      ),
    );
  }
}
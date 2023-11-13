import 'package:flutter/material.dart';

class wishlist extends StatefulWidget {
  const wishlist({super.key});

  @override
  State<wishlist> createState() => _wishlistState();
}

class _wishlistState extends State<wishlist> {
  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          color: Colors.black,
          onPressed: (){
            Navigator.pop(context);
          }, 
          icon: Icon(Icons.arrow_back)),
        title: Text('WishList',style: TextStyle(
          color: Colors.black
        ),),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10,top: 10),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  child: Column(
                    children: [
                      Image.asset('assets/hoody ajio.jpg',width: 150,),
                      Text("MISCHIEF MONKEY"),
                      Text("Typographic Print Hoodee...",style: TextStyle(
                        color: const Color.fromARGB(255, 185, 184, 184),
                        fontSize: 12
                      ),),
                      Row(
                        children: [
                          Text("₹ 1,499.00 ",style: TextStyle(
                            fontSize: 13
                          ),),
                          Text(" ₹ 8,999.00 ",style: TextStyle(
                        decoration: TextDecoration.lineThrough,color: const Color.fromARGB(255, 185, 184, 184),
                        fontSize: 12
                      ),),Text("83% off",style: TextStyle(
                        color: const Color.fromARGB(255, 185, 184, 184),
                        fontSize: 12
                      ),)
                        ],
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(Colors.white),
                            ),
                            onPressed: (){}, 
                          child: Icon(Icons.delete_outline,color: Colors.black,)),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 50, 47, 47))
                            ),
                            onPressed: (){}, 
                          child: Row(
                            children: [
                              Icon(Icons.shopping_bag_outlined),
                              Text("Add to Bag")
                            ],
                          )),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
import 'package:ajio/screens/account%20screens/notifications.dart';
import 'package:ajio/screens/wishlist.dart';
import 'package:flutter/material.dart';

 homeAppBar(BuildContext context){
  return AppBar(
    elevation: 0,
        backgroundColor: Colors.white,
        title: Container(
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Search by Product, Brand",
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.camera_alt_outlined)
                ),
              )
            ],
          ),
        ),
        leading: Image.asset("assets/ajio.jpg",
        
        ),
        actions: [
          IconButton(
            onPressed:() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>notification()));
            },
            icon: const Icon(Icons.notifications_outlined,color: Colors.black,)) ,
          IconButton(
            onPressed:() {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => wishlist(),));
            },
            icon: const Icon(Icons.favorite_outline,color: Colors.black,)),
          IconButton(
            onPressed:() {
            },
            icon: const Icon(Icons.shopping_bag_outlined,color: Colors.black,)),
        ],
      );
}

Widget textScroll(){
 return const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 40,
                        child: Icon(Icons.home_rounded)),
                      SizedBox(
                        width: 40,
                        child: CircleAvatar( 
                          radius: 15,
                          backgroundImage: NetworkImage('https://5.imimg.com/data5/SELLER/Default/2022/9/TS/OH/DL/43239049/navratri-fesival-couple-combo-dress.jpeg'),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        child: Text("Sale")),
                      SizedBox(
                        width: 40,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundImage: AssetImage('assets/men.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        child: Text("Men")),
                      SizedBox(
                        width: 40,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundImage: NetworkImage("https://5.imimg.com/data5/SELLER/Default/2020/10/SO/PK/KA/9664580/ladies-designer-dress.jpg"),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        child: Text("Women")),
                      SizedBox(
                        width: 40,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundImage: NetworkImage('https://gormanshop.com.au/cdn/shop/files/230815_gm_kids_campaign00044.jpg?v=1693380190'),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        child: Text("Kids")),
                      SizedBox(
                        width: 40,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundImage: NetworkImage('https://images.naptol.com/usr/local/csp/staticContent/product_images/horizontal/750x750/Sumangali-Jewellery-Collection-o1.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: 80,
                        child: Text("Jewellery")),
                      SizedBox(
                        width: 40,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundImage: NetworkImage('https://m.media-amazon.com/images/G/31/img20/Shoes/September/Newbrandslaunches/Footwear-header._SY1500_QL85_.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: 80,
                        child: Text("Footwear")),
                      SizedBox(
                        width: 40,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundImage: NetworkImage('https://graphicsfamily.com/wp-content/uploads/2020/07/Beauty-Web-Banner-Design-Template-scaled.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        child: Text("Beauty")),
                      SizedBox(
                        width: 40,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundImage: NetworkImage('https://www.slim.it/hubfs/Immagini%20degli%20articoli/Articoli_Settembre_2022/Copertina_domestic_appliances.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        child: Text("Home")),
                      SizedBox(
                        width: 40,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundImage: NetworkImage('https://images.pexels.com/photos/6712117/pexels-photo-6712117.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        ),
                      ),
                      SizedBox(
                        width: 90,
                        child: Text("Winterwear")),
                      SizedBox(
                        width: 40,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundImage: NetworkImage('https://images.herzindagi.info/image/2022/Apr/Bringing-you-the-best-spring-accessories.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: 90,
                        child: Text("Accessories")),
                      SizedBox(
                        width: 40,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundImage: NetworkImage('https://mahezon.in/cdn/shop/products/Untitled_design_61_02f98bc8-c6c2-46a7-80fc-f00adfd6431f_1200x1200.png?v=1677243555'),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: Text("Home Grown Brands")),

                    ],
                  ),
                ),
              );
}

 categoryAppbar(){
  return AppBar(
    backgroundColor: Colors.white,
    title: const Text("Shop By Category",style: TextStyle(
      color: Colors.grey
    ),),
    actions: [
      const Icon(Icons.favorite_outline,color: Colors.grey,),
      const SizedBox(
        width: 15,
      ),
      const Icon(Icons.shopping_bag_outlined,color: Colors.grey,),
      const SizedBox(
        width: 20,
      )
    ],
  );
}



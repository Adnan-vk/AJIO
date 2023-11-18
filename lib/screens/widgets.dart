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

Widget textScroll(BuildContext context) {
  final categories = [
    {"icon": Icons.home_rounded, "text": "Sale"},
    {"image": 'https://5.imimg.com/data5/SELLER/Default/2022/9/TS/OH/DL/43239049/navratri-fesival-couple-combo-dress.jpeg', "text": "Men"},
    {"text": "Women", "image": "https://5.imimg.com/data5/SELLER/Default/2020/10/SO/PK/KA/9664580/ladies-designer-dress.jpg"},
    {"text": "Kids", "image": "https://gormanshop.com.au/cdn/shop/files/230815_gm_kids_campaign00044.jpg?v=1693380190"},
    {"text": "Jewellery", "image": "https://images.naptol.com/usr/local/csp/staticContent/product_images/horizontal/750x750/Sumangali-Jewellery-Collection-o1.jpg"},
    {"text": "Footwear", "image": "https://m.media-amazon.com/images/G/31/img20/Shoes/September/Newbrandslaunches/Footwear-header._SY1500_QL85_.jpg"},
    {"text": "Beauty", "image": "https://graphicsfamily.com/wp-content/uploads/2020/07/Beauty-Web-Banner-Design-Template-scaled.jpg"},
    {"text": "Home", "image": "https://www.slim.it/hubfs/Immagini%20degli%20articoli/Articoli_Settembre_2022/Copertina_domestic_appliances.jpg"},
    {"text": "Winterwear", "image": "https://images.pexels.com/photos/6712117/pexels-photo-6712117.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"},
    {"text": "Accessories", "image": "https://images.herzindagi.info/image/2022/Apr/Bringing-you-the-best-spring-accessories.jpg"},
    {"text": "Home Grown Brands", "image": "https://mahezon.in/cdn/shop/products/Untitled_design_61_02f98bc8-c6c2-46a7-80fc-f00adfd6431f_1200x1200.png?v=1677243555"},
  ];

  double iconSize = 0;
  double categorySize = 90;

  if (MediaQuery.of(context).size.width < 600) {
    iconSize = 30;
    categorySize = 70;
  }

  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: categories.map((category) {
          return SizedBox(
            width: category.containsKey("icon") ? iconSize : categorySize,
            child: category.containsKey("icon")
                ? Icon(category["icon"] as IconData, size: iconSize)
                : Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: NetworkImage(category["image"] as String),
                      ),
                      SizedBox(width: 8),
                      Text(category["text"] as String),
                    ],
                  ),
          );
        }).toList(),
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
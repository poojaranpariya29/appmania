import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'list.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirtspageState();
}

class _FirtspageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 100, left: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Icon(Icons.location_on, size: 35),
                    Text(
                      "Habiganj City",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 170),
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffF4F4F4)),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "cart_page");
                        },
                        child: Icon(
                          Icons.menu_sharp,
                          size: 25,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "Find The",
                  style: TextStyle(color: Colors.black, fontSize: 27)),
              TextSpan(
                  text: " Best\n",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold)),
              TextSpan(
                  text: "Food",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold)),
              TextSpan(
                  text: "  Around You",
                  style: TextStyle(color: Colors.black, fontSize: 27)),
            ])),
            Container(
              height: 60,
              width: 600,
              margin: EdgeInsets.all(30),
              decoration: BoxDecoration(
                  color: Color(0xffF4F4F4),
                  borderRadius: BorderRadius.circular(50)),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: 29,
                    ),
                    Text(
                      "Search your favourit food",
                      style: TextStyle(
                          color: Color(0xffADAEAF),
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                      width: 35,
                    ),
                    Icon(Icons.sync_alt_outlined),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Find  ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w700)),
                      TextSpan(
                          text: "5km",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                              fontWeight: FontWeight.w600)),
                    ])),
                    Icon(Icons.arrow_forward_ios_sharp,
                        size: 16, color: Colors.red),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Color(0xff5CC24A),
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                            child: Text(
                          "Salads",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        )),
                      ),
                      Container(
                        height: 50,
                        width: 120,
                        margin: EdgeInsets.only(left: 15),
                        decoration: BoxDecoration(
                            color: Color(0xffF4F4F4),
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                            child: Text(
                          "Hot sale",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        )),
                      ),
                      Container(
                        height: 50,
                        width: 120,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Color(0xffF4F4F4),
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                            child: Text(
                          "Popularity",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        )),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: productlist1.map((e) {
                          return InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, "product_detail",
                                  arguments: e);
                            },
                            child: Product(
                              img: e["img"],
                              name: e["name"],
                              min: e["min"],
                              price: e["price"],
                              rating: e["rating"],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: productlist2.map((e) {
                          return InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, "productdetail",
                                  arguments: e);
                            },
                            child: Product(
                              img: e["img"],
                              name: e["name"],
                              min: e["min"],
                              price: e["price"],
                              rating: e["rating"],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Product extends StatelessWidget {
  String? name;
  String? img;
  String? min;
  double? price;
  double? rating;

  Product({super.key, this.name, this.img, this.min, this.price, this.rating});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 270,
          width: 180,
          margin: EdgeInsets.only(left: 17, top: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0xffF4F4F4)),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.centerRight,
                  child: Icon(Icons.favorite_border)),
              Image.network(
                img ?? "",
                height: 130,
                width: 150,
              ),
              Text(
                name ?? "",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              Row(
                children: [
                  Text(
                    min ?? "",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffADAEAF)),
                  ),
                  Spacer(),
                  Icon(
                    Icons.star_border,
                    color: Colors.orangeAccent,
                    size: 20,
                  ),
                  Text(
                    "$rating",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffADAEAF)),
                  ),
                ],
              ),
              Stack(
                children: [
                  Positioned(
                    left: 10,
                    child: Text(
                      "\$$price",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 47,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Color(0xff5CC24A),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomRight: Radius.circular(25),
                        ),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

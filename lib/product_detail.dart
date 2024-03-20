import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'list.dart';
import 'main.dart';

class ProductDetail extends StatefulWidget {
  ProductDetail({Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int cout = 1;

  @override
  Widget build(BuildContext context) {
    final productlist1 = ModalRoute.of(context)?.settings.arguments as Map?;

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xff4A9936),
          Color(0xff81D96A),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              margin: EdgeInsets.only(top: 150),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(70)),
                  color: Color(0xffFFFFFF)),
            ),
            Positioned(
              top: 30,
              left: 10,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    width: 270,
                  ),
                  Icon(
                    Icons.favorite_border,
                    size: 30,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Positioned(
              top: 150 - 100,
              right: 0,
              left: 0,
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    child: Image.network(productlist1?["img"] ?? ""),
                  ),
                  Container(
                    height: 52,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff5CC24A)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: InkWell(
                              onTap: () {
                                cout = cout - 1;
                                setState(() {});
                              },
                              child: Icon(Icons.remove,
                                  color: Colors.white, size: 20)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text("$cout",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: InkWell(
                              onTap: () {
                                cout = cout + 1;
                                setState(() {});
                              },
                              child: Icon(Icons.add,
                                  color: Colors.white, size: 20)),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 35, top: 20),
                        child: Row(
                          children: [
                            Text(
                              productlist1?["name"] ?? "",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 35),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text:
                                  "Fresh Avocado, shrimps salad with lettuce green mix,\ncherry tomatoes,herbs and olive oil, lemon dressing \nhealthy food...",
                              style: TextStyle(
                                  color: Color(0xffADAEAF),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500)),
                        ])),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30, top: 15),
                              child: Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 30,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 15),
                              child: Text(
                                productlist1?["rating"]?.toString() ?? "",
                                style: TextStyle(
                                    fontSize: 19, fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 35, top: 15),
                              child: Text(
                                "🔥",
                                style: TextStyle(fontSize: 19),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5, top: 15),
                              child: Text(
                                "100 Kcal",
                                style: TextStyle(
                                    fontSize: 19, fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30, top: 15),
                              child: Text(
                                "⏰",
                                style: TextStyle(fontSize: 19),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5, top: 15),
                              child: Text(
                                "5-10 Min",
                                style: TextStyle(
                                    fontSize: 19, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30, top: 20),
                            child: Text(
                              "Ingradients",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Positioned(
                            bottom: 60,
                            left: 30,
                            child: Container(
                              margin: EdgeInsets.all(10),
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Color(0xffE5E7E9),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "🍇",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 60,
                            left: 90,
                            child: Container(
                              margin: EdgeInsets.all(10),
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Color(0xffE5E7E9),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "🍉",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 60,
                            left: 150,
                            child: Container(
                              margin: EdgeInsets.all(10),
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Color(0xffE5E7E9),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "🍎",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 60,
                            left: 210,
                            child: Container(
                              margin: EdgeInsets.all(10),
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Color(0xffE5E7E9),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "🍒",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 60,
                            left: 270,
                            child: Container(
                              margin: EdgeInsets.all(10),
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Color(0xffE5E7E9),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "🥝",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Container(
                          height: 70,
                          width: 300,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xff5CC24A)),
                          child: InkWell(
                              onTap: () {
                                if (productlist1 != 0) {
                                  cartList.add(productlist1!);
                                }
                                Navigator.pushNamed(context, "cart_page");
                              },
                              child: Center(
                                  child: Text(
                                "Add To Cart",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500),
                              ))),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

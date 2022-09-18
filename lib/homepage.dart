// ignore_for_file: prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'HomeAppBar.dart';
import 'CategoriesWidget.dart';
import 'ItemsWidget.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return (SafeArea(
        child: Scaffold(
            body: ListView(
              children: [
                HomeAppBar(),
                Container(
                  // height: 500,
                  padding: EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                      color: Color(0xFFEDECF2),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      )),
                  child: Column(children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            height: 50,
                            width: 300,
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search here...",
                              ),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.camera_alt,
                            size: 27,
                            color: Color(0xFF4C53A5),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 10,
                      ),
                      child: Text(
                        "Categories",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4C53A5)),
                      ),
                    ),
                    CategoriesWdiget(),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      child: Text(
                        "Best Selling",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4C53A5)),
                      ),
                    ),
                    ItemsWidget(),
                  ]),
                ),
              ],
            ),
            bottomNavigationBar: CurvedNavigationBar(
              backgroundColor: Colors.transparent,
              onTap: (index){},
              height: 70,
              color: Color(0xFF4C53A5),
              items: [
                Icon(
                  Icons.home,
                  size: 30,
                  color: Colors.white,
                ),
                Icon(
                  Icons.shopping_cart,
                  size: 30,
                  color: Colors.white,
                ),
                Icon(
                  Icons.favorite_border_outlined,
                  size: 30,
                  color: Colors.white,
                ),
                Icon(
                  Icons.list,
                  size: 30,
                  color: Colors.white,
                ),
              ],
            ))));
  }
}

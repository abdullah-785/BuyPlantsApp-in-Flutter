import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'recommedPlantCard.dart';
import 'textMore.dart';
import 'headerCard.dart';
import 'screens/components/detailBody.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderCard(size: size),

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: textMore(
              text: "Recommanded",
            ),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> detailBody(
                      
                      img: "images/images/image_1.png",
                      title: "samantha",
                      country: "Rassia",
                      price: 500,
                      
                      )
                      )
                      );
                  },
                  child: RecommedPlantCard(
                    image: "images/images/image_1.png",
                    title: "samantha",
                    country: "Rassia",
                    price: 500,
                    press: () {},
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> detailBody(
                      
                      img: "images/images/image_2.png",
                      title: "Angelica",
                      country: "Rassia",
                      price: 440,
                      
                      )
                      )
                      );
                  },
                  child: RecommedPlantCard(
                    image: "images/images/image_2.png",
                    title: "Angelica",
                    country: "Rassia",
                    price: 440,
                    press: () {},
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> detailBody(
                      
                      img: "images/images/image_3.png",
                      title: "samantha",
                      country: "Rassia",
                      price: 599,
                      
                      )));
                  },
                  child: RecommedPlantCard(
                    image: "images/images/image_3.png",
                    title: "samantha",
                    country: "Rassia",
                    price: 599,
                    press: () {},
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16.0, 16, 16.0, 0),
            // padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 32),
            child: textMore(
              text: "Feather Recommanded",
            ),
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Image(
                      image: AssetImage("images/images/bottom_img_1.png"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image(
                        image: AssetImage("images/images/bottom_img_1.png")),
                  ),
                ],
              ),
            ),
          ),

          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, -10),
                  blurRadius: 35.0,
                  color: Colors.green.withOpacity(0.2)
                )
              ]
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              
              items: [
              BottomNavigationBarItem(icon: Icon(Icons.email), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.store), label: "Store"),
              BottomNavigationBarItem(icon: Icon(Icons.contact_page), label: "Contact")
            ],),
          )
        ],
      ),
    );
  }
}

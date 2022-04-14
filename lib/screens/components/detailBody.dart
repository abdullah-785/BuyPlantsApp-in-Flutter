import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'buyProductCard.dart';
import 'detail_page_icons_Card.dart';

class detailBody extends StatelessWidget {
  const detailBody({Key? key, required this.img, required this.title, required this.country, required this.price}) : super(key: key);

final String img;
final String title;
final String country;
final int price;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color _color = Colors.green;

    return Scaffold(
      //detailBodyWidget is created in the bottom of this file
      body: detailBodyWidget(size: size, img: img, title: title, price: price, country: country),
    );
  }
}
class detailBodyWidget extends StatelessWidget {
  const detailBodyWidget({
    Key? key,
    required this.size,
    required this.img,
    required this.title,
    required this.price,
    required this.country,
  }) : super(key: key);

  final Size size;
  final String img;
  final String title;
  final int price;
  final String country;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: size.height * 0.8,
                  child: Column(
                    children: [
                      // Image(image: AssetImage("images/icons/back_arrow.jpg"),)
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0, left: 20.0),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Image.asset(
                                "images/icons/back_arrow.jpg",
                                height: 25.0,
                                width: 25.0,
                              ),
                            )),
                      ),
                      
                      const Padding(
                         padding: EdgeInsets.fromLTRB(0, 180, 0, 10),
                        child: detailPageIconsCard(image: "images/icons/sun.jpg",),
                      ),
                      const Padding(
                         padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
                        child: detailPageIconsCard(image: "images/icons/icon_2.jpg",),
                      ),
                      const Padding(
                         padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
                        child: detailPageIconsCard(image: "images/icons/icon_3.jpg",),
                      ),
                      const Padding(
                         padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
                        child: detailPageIconsCard(image: "images/icons/icon_4.jpg",),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: size.height * 0.8,
                width: size.width * 0.75,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(img),
                    // fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 20.0),
                        color: Colors.green.withOpacity(0.1),
                        blurRadius: 10)
                  ],
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(63.0),
                      topLeft: Radius.circular(63.0)),
                ),
              ),
            ],
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 35, 30, 0),
              child: Row(
                children: [
                  Text(title, style: const TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),),
                  const Spacer(),
                  Text("\$$price", style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 25.0),),
                ],
              ),
            ),
            
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(country, style: TextStyle(color: Colors.green, fontSize: 18.0),)),
          ),


          Container(
            child: Row(
              children: [
                SizedBox(
                  height: 50,
                  width: 80,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12, 20, 0, 0),
                    child: TextButton(
                      style: ButtonStyle(foregroundColor: MaterialStateProperty.all<Color>(Colors.white), backgroundColor: MaterialStateProperty.all<Color>(Colors.green)),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> buyProductCard() ));
                      }, child: Text("Buy", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
                  ),
                ),
                Spacer(),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 30, 0),
                  child: Text("description", style: TextStyle( fontSize: 18),),
                ),
              ],
            ),
          )
        ],

        
      ),
    );
  }
}


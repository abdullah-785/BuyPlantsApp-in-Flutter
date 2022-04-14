import 'dart:html';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_svg/avd.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'body.dart';
import 'screens/components/detailBody.dart';
import 'screens/components/buyProductCard.dart';


void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Planting App",
    home: homePage(),

    // initialRoute: '/',
    // routes: {
    // '/': (context) => const buyProductCard(),
    // },
  ));
}

class homePage extends StatelessWidget {
  const homePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: bulidAppBar(),
      body: Body(),
      
    );
  }

  AppBar bulidAppBar() {
    return AppBar(
      elevation: 0,
      // title: Text("Plant App"),
      backgroundColor: Color.fromARGB(255, 28, 218, 34),
      leading: IconButton(
         icon: SvgPicture.asset("images/icons/menu.svg"),
        onPressed: (){},
      ),
      
    );
    
    
  }
}


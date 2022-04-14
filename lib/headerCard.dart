import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class HeaderCard extends StatelessWidget {
  const HeaderCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.2,
      // color: Colors.black,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.2 - 27,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 28, 218, 34),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(children: const [
              Text("Plants",
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              Spacer(),
              Image(
                image: AssetImage("images/images/logo.png"),
              ),
            ]),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                height: 54,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          color: Color.fromARGB(255, 167, 226, 169)
                              .withOpacity(0.05)),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      SvgPicture.asset("images/icons/search.svg")
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}


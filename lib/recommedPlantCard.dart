import 'package:flutter/material.dart';



class RecommedPlantCard extends StatelessWidget {
  const RecommedPlantCard({
    Key? key, this.image, this.title, this.country, required this.price, required this.press
    
  }) : super(key: key);

  // final Size size;
  final image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(left: 10, top: 20),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image(image: AssetImage(image)),
          GestureDetector(
            onTap: () => {},
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(offset: Offset(0, 10), color: Colors.white),
                  
                ]
              ),
              child: Container(
                width: size.width * 0.4,
                
                child: Row(
                  children: [
                    RichText(
                      text: TextSpan(
                      children: [
                        TextSpan(
                        
                        text: "$title\n".toUpperCase(),
                        style: const TextStyle(fontWeight: FontWeight.bold)
                      ),
                      
                      TextSpan(
                        text: "$country".toUpperCase(),
                        style: const TextStyle(color: Color.fromARGB(255, 104, 182, 106))
                      ),
                      ],
                    )
                    ),
                    Spacer(),
                    Text("\$$price", style: const TextStyle(color: Color.fromARGB(255, 14, 206, 20), fontWeight: FontWeight.bold),)
                    
                  ],
                
                ),
              ),
              
            ),
          ),
          
        ],
      ),
    );
  }
}

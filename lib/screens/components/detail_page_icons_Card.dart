import 'package:flutter/material.dart';

class detailPageIconsCard extends StatelessWidget {
  const detailPageIconsCard({
    Key? key, required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: 42,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.22),
            offset: Offset(0,15),
            blurRadius: 15,
            
          )
        ],
      ),
      child: Image.asset(image),
    );
  }
}

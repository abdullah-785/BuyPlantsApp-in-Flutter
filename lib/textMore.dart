import 'package:flutter/material.dart';


class textMore extends StatelessWidget {
  const textMore({
    Key? key, required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("$text", style: TextStyle(fontWeight: FontWeight.bold),),
        Spacer(),
        ElevatedButton(
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 28, 218, 34)),),
          onPressed: () {}, child: const Text("More", style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        
      ],
    );
  }
}

import 'package:flutter/material.dart';

class buyProductCard extends StatelessWidget {
  const buyProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Details"),
          backgroundColor: Color.fromARGB(255, 28, 218, 34),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 180, left: 8, right: 8, bottom: 280),
          child: Card(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                      top: 50, left: 8.0, right: 8.0, bottom: 8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_box),
                      hintText: "Enter your name",
                      label: Text("Name"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      hintText: "Enter your Email",
                      label: Text("Email"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    
                    decoration: InputDecoration(
                      // errorText: 'Something went wrong. Please re-check your input',
                      prefixIcon: Icon(Icons.contact_phone),
                      hintText: "Enter your phone number",
                      label: Text("Phone Number"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(254, 5, 0, 0),
                  child: SizedBox(
                    height: 45,
                    width: 90,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Color.fromARGB(255, 28, 218, 34)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        onPressed: () {
                          showDialog(context: context, builder: (BuildContext context){
                          return const AlertDialog(
                            title: Text("Congratulations"),
                            content: Text("Your order is successfully created."),
                          );
                          });
                        },
                        child: const Text("Buy")),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

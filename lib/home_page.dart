import 'package:flutter/material.dart';
import "cash_payment.dart";

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return initScreen();
  }

  Widget initScreen() {
    return Scaffold(
        backgroundColor: const Color(0xffF8F8FF),
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          actions: [
            Container(
                margin: const EdgeInsets.only(right: 10, top: 20),
                child: const Text("SPLIT",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                    )))
          ],
        ),
        body: Column(
          children: [
            Container(
                height: 20,
                margin: const EdgeInsets.only(top: 20),
                child: const Text("Rs. 220.00",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                    ))),
            Container(
                height: 20,
                margin: const EdgeInsets.only(bottom: 20),
                child: const Text("Total Amount",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                    ))),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => cashpayment()));
                      },
                      child: const CircleAvatar(
                        backgroundImage: AssetImage("images/cash.jpg"),
                      ),
                    ),
                    title: const Text('Cash'),
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("images/credit.jpg"),
                    ),
                    title: Text('Card'),
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("images/mobile.png"),
                    ),
                    title: Text('Online'),
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("images/star.png"),
                    ),
                    title: Text('Credt'),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

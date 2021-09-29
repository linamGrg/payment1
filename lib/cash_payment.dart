import 'package:flutter/material.dart';
import 'package:payment_method/cash_change.dart';
import "home_page.dart";
import "cash_change.dart";

// ignore: camel_case_types
class cashpayment extends StatefulWidget {
  const cashpayment({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _cashpaymentState();
}
// ignore: todo
// TODO: implement createState

// ignore: camel_case_types
class _cashpaymentState extends State<cashpayment> {
  get builder => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffF8F8FF),
          leadingWidth: 200,
          // ignore: prefer_const_literals_to_create_immutables
          leading: Row(children: [
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                )),
            const Text("Cash Payment",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                ))
          ]),
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
                margin: const EdgeInsets.only(top: 40),
                child: const Text("Rs. 220.00",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                    ))),
            Container(
                height: 20,
                margin: const EdgeInsets.only(bottom: 50),
                child: const Text("Total Amount",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                    ))),
            SizedBox(
              //flex: 1,
              height: 100,
              child: ListView(
                //padding: EdgeInsets.only(left: 20),
                children: [
                  ListTile(
                      leading: Column(children: [
                    Container(
                      //margin: EdgeInsets.only(top: 25),
                      // alignment: Alignment.centerLeft,
                      child: Text("Cash Recieved"),
                    ),
                    Container(
                      //
                      // alignment: Alignment.centerLeft,
                      child: Text(
                        "250.00",
                      ),
                    ),
                  ])),
                  const Divider(
                    thickness: 1,
                  ),
                ],
              ),
            ),
            Container(
                //margin: const EdgeInsets.only(top:),
                child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => cashchange()));
              },
              child: Text("Confirm"),
              style: ElevatedButton.styleFrom(
                primary: Colors.lightGreen,
                onSurface: Colors.blue,
              ), // set the background color
            ))
          ],
        ));
  }
}

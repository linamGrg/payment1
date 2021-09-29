import 'package:flutter/material.dart';
import 'cash_payment.dart';

// ignore: camel_case_types
class cashchange extends StatefulWidget {
  const cashchange({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _cashchangeState();
  // TODO: implement createState
}

// ignore: camel_case_types
class _cashchangeState extends State<cashchange> {
  get builder => null;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffF8F8FF),
          leadingWidth: 200,
          // ignore: prefer_const_literals_to_create_immutables
          leading: Row(children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const cashpayment()));
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            const Text("Cash Payment",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                ))
          ]),
        ),
        body: Column(children: [
          Row(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 40, left: 40),
                  //color: Colors.blue,
                  height: 100,
                  width: size.width / 2.5,
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      //color: Colors.black,
                      border: Border.all(
                    width: 1,
                  )),
                  child: Column(
                    children: const [
                      SizedBox(height: 25),
                      Text("Rs. 220",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                          )),
                      Text("Total Amount",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  )),
              Container(
                  //color: Colors.blue,
                  height: 100,
                  width: size.width / 2.5,
                  margin: const EdgeInsets.only(top: 40),
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      //color: Colors.black,
                      border: Border.all(
                    width: 1,
                  )),
                  child: Center(
                      child: Column(
                    children: const [
                      SizedBox(height: 25),
                      Text("Rs. 30",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                          )),
                      Text("Change",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  )))
            ],
          ),
          const SizedBox(height: 20),
          /* SizedBox(
            // height: 100,
            child: ListView(
              //padding: EdgeInsets.only(left: 20),
              children: [
                ListTile(
                    leading: Column(children: [
                  //SizedBox(height: 20,),
                  Container(
                    //margin: EdgeInsets.only(top: 25),
                    // alignment: Alignment.centerLeft,
                    child: Icon(Icons.mail),
                  ),
                  Container(
                    //
                    // alignment: Alignment.centerLeft,
                    child: Text("ok.123@gmail.com"),
                  ),
                ])),
                const Divider(
                  thickness: 1,
                ),
              ],
            ),
          ), */
          Container(
              //margin: const EdgeInsets.only(top:),
              child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const cashchange()));
            },
            child: const Text("Complete Payment"),
            style: ElevatedButton.styleFrom(
              primary: Colors.lightGreen,
              onSurface: Colors.blue,
            ), // set the background color
          ))
        ]));
  }
}

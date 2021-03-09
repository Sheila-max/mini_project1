import 'package:flutter/material.dart';
import 'package:mini_project1/constants.dart';
import 'package:mini_project1/screens/header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: [
        Header(size: size),
        Container(
            height: 24,
            child: Stack(
              children: [
                Text(
                  "Products",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                      height: 7,
                      color: kPrimaryColor.withOpacity(0.2),
                    ))
              ],
            )),
        Container(
            margin: EdgeInsets.only(
              left: kDefaultPadding,
              top: kDefaultPadding / 2,
              bottom: kDefaultPadding * 2.5,
            ),
            width: size.width * 0.4,
            child: Column(
              children: [
                Image.asset("assets\images\blow dryer.jpg"),
                Container(
                    padding: EdgeInsets.all(kDefaultPadding / 2),
                    decoration:
                        BoxDecoration(color: Colors.blueGrey, boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23),
                      )
                    ]),
                    child: Row(children: [
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          text: "Blow Dryer\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                      ])),
                      Text('\$15',
                          style: Theme.of(context)
                              .textTheme
                              .button
                              .copyWith(color: kPrimaryColor)),
                    ]))
              ],
            ))
      ]),
    );
  }
}

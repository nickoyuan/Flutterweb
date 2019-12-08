







import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/widgets/Search.dart';

class LargeChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.centerRight,
            widthFactor: .6,
            child: Stack(
              children: <Widget>[
                Image.asset("assets/image_01.png", scale: .85),
                Container(
                  margin: EdgeInsets.only(left: 100),
                  width: 100,
                  height: 100,
                  child:  FlareActor(
                    'assets/World.flr',
                    animation: 'Preview2',
                  )
                )
              ],
            )
          ),
          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: .6,
            child: Padding(
              padding: EdgeInsets.only(left: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Hello!",
                      style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat-Regular",
                          color: Color(0xFF8591B0))),
                  RichText(
                    text: TextSpan(
                        text: "WellCome To ",
                        style:
                        TextStyle(fontSize: 60, color: Color(0xFF8591B0)),
                        children: [
                          TextSpan(
                              text: "Connection",
                              style: TextStyle(
                                  fontSize: 60,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87))
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, top: 20),
                    child: Text("LET'S MAKE CONNECTIONS"),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Search()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
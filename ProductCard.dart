import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCard extends StatelessWidget {
  final String image;

  const ProductCard({Key key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0, bottom: 48.0),
        child: Row(mainAxisSize: MainAxisSize.max, children: <Widget>[
          Expanded(
              child: AspectRatio(
            aspectRatio: 1,
            child: Card(
              elevation: 16.0,
              shadowColor: Colors.black38,
              child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/card.jpg")),
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.white),
                  child: Transform.scale(
                    scale: 1.4,
                    child: Transform.translate(
                        offset: Offset(0, -32), child: Image.asset(image)),
                  )),
            ),
          )),
          Expanded(
              child: Material(
                elevation: 8.0,
                shadowColor: Colors.black45,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(64.0),
                    topRight: Radius.circular(64.0)),
                child: Container(
                    height: MediaQuery.of(context).size.width * .20,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(64.0),
                            topRight: Radius.circular(64.0))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 16.0),
                      child: Row(children: <Widget>[
                        Expanded(
                            child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                              Text("Bisleri",
                                  style: GoogleFonts.oswald(
                                      letterSpacing: 1.0,fontSize: 16.0,
                                      fontWeight: FontWeight.bold)),
                              Text("  ₹ 200 per bottle",
                                  style: GoogleFonts.quicksand(fontSize: 12.0))
                            ])),
                        Row(
                          children: <Widget>[
                            IconButton(
                                icon: Icon(Icons.remove), onPressed: () {}),
                            Text("0",
                                style: GoogleFonts.oswald(
                                    letterSpacing: 1.0,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold)),
                            IconButton(icon: Icon(Icons.add), onPressed: () {})
                          ],
                        )
                      ], mainAxisSize: MainAxisSize.max),
                    )),
              ),
              flex: 2)
        ]));
  }
}

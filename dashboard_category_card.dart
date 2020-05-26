import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/ui/widgets/common/hex_color.dart';
import 'dart:math' as math;

class DashboardCategoryCard extends StatelessWidget {
  final String imagePath;
  final String categoryName;
  final String categoryColor;

  const DashboardCategoryCard(
      {Key key, this.imagePath, this.categoryName, this.categoryColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 230.0,
        width: MediaQuery.of(context).size.width / 2 - 16,
        child: Card(margin: EdgeInsets.all(8.0),
            color: HexColor.fromHex(categoryColor),
            shadowColor: HexColor.fromHex(categoryColor),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
            elevation: 16.0,
            child: Stack(children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(imagePath,
                          width: 128.0, height: 200.0, fit: BoxFit.contain))),
              Transform.translate(
                  offset: Offset(10.0, 180.0),
                  child: Text(categoryName,
                      style: GoogleFonts.luckiestGuy(
                          fontSize: 26.0, color: Colors.white)))
            ])));
  }
}

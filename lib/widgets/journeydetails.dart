import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget journeyDetails() {
  return Container(
    // journeycard1KdY (48:12)
    margin: EdgeInsets.fromLTRB(0, 0, 3, 0),
    padding: EdgeInsets.fromLTRB(11, 10, 12.45, 2),
    width: 346,
    height: 254,
    decoration: BoxDecoration(
      color: Color(0xff17adb3),
      borderRadius: BorderRadius.circular(9),
    ),
    child: Container(
      // insidecontents2Xx (48:11)
      width: double.infinity,
      height: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // journeydetail
            width: double.infinity,
            height: 51,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 26,
                  child: Container(
                    width: 322.55,
                    height: 25,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // mostcomfortableB3U (46:76)
                          margin: EdgeInsets.fromLTRB(0, 0, 143.55, 0),
                          child: Text(
                            'Most Comfortable',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              height: 1.6625,
                              color: Color(0x7fffffff),
                            ),
                          ),
                        ),
                        Container(
                          // frame153HcJ (46:77)
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 3),
                          padding: EdgeInsets.fromLTRB(2, 0, 0, 0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // navigationcPg (46:78)
                                margin: EdgeInsets.fromLTRB(0, 0, 6.33, 0.67),
                                width: 12.67,
                                height: 12.67,
                                child: Image.asset(
                                  "assets/images/Vector.png",
                                  width: 12.67,
                                  height: 12.67,
                                ),
                              ),
                              Text(
                                // km
                                '500 Km',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  height: 1.6625,
                                  color: Color(0xb2ffffff),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 196,
                    height: 35,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // nagpurzv2 (46:75)
                          margin: EdgeInsets.fromLTRB(0, 0, 1.5, 0),
                          child: Text(
                            'Nagpur ',
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w700,
                              height: 1.6625,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 1, 8.5, 0),
                          width: 17,
                          height: 16.02,
                          child: Image.asset(
                            "assets/images/arrow.png",
                            width: 17,
                            height: 16.02,
                          ),
                        ),
                        Text(
                          'Hydrabad ',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            height: 1.6625,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0.55, 6, 0, 0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // electriccarrechargestationevre (46:85)
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 6),
                  width: 322,
                  height: 160,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(9),
                    child: Image.asset(
                      "assets/images/eco1.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  // timestopsratingsKzE (48:10)
                  margin: EdgeInsets.fromLTRB(0.24, 0, 0.29, 0),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // hours
                        margin: EdgeInsets.fromLTRB(0, 0, 17.62, 0),
                        child: Text(
                          '5.2 hours',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            height: 1.6625,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                      Container(
                        // stops
                        margin: EdgeInsets.fromLTRB(0, 0, 172.85, 0),
                        child: Text(
                          '2 Stops',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            height: 1.6625,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                      Container(
                        // ratings
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 3),
                        width: 46,
                        height: 8,
                        child: Image.asset(
                          "assets/images/starss.png",
                          width: 54,
                          height: 8,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

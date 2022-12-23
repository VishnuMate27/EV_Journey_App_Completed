import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PreLogin extends StatelessWidget {
  const PreLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: RichText(
              text: TextSpan(
                text: 'PLAN YOUR \n',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                  height: 1.6619999144,
                  color: Color(0xff17adb3),
                ),
                /*defining default style is optional */
                children: <TextSpan>[
                  TextSpan(
                      text: 'ELECTRIC',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                        height: 1.6625,
                        color: Color(0xff7df9ff),
                      )),
                  TextSpan(
                      text: '\tVEHICLE\nJOURNEY',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                        height: 1.6625,
                        color: Color(0xff17adb3),
                      )),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 159),
            width: 521,
            height: 178,
            child: Image.asset(
              "assets/images/ev_charging_station.png",
              fit: BoxFit.cover,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: double.infinity,
              height: 55,
              decoration: BoxDecoration(
                color: Color(0xff17adb3),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w700,
                    height: 1.6625,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: double.infinity,
              height: 55,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff17adb3)),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(
                child: Text(
                  'SIGNUP',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w700,
                    height: 1.6625,
                    color: Color(0xff17adb3),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

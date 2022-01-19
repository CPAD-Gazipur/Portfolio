import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Appbutton extends StatelessWidget {
  Appbutton({Key? key}) : super(key: key);

  List<IconData> ButtonIcon = [
    FontAwesomeIcons.github,
    FontAwesomeIcons.linkedinIn,
    FontAwesomeIcons.twitter,
    FontAwesomeIcons.facebook,
  ];

  List<String> ButtonName = [
    'GitHub',
    'LinkedIn',
    'Twetter',
    'Facebook',
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Wrap(
          children: [
            for (int i = 0; i < ButtonName.length; i++)
              Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  child: Row(
                    children: [
                      Icon(ButtonIcon[i]),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        ButtonName[i],
                        style: TextStyle(
                          fontFamily: 'Inconsolata',
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.pink,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      textStyle:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),
              ),
          ],
        ),
      ],
    );
  }
}

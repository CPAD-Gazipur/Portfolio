import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Appbutton extends StatelessWidget {
  Appbutton({Key? key}) : super(key: key);

  List<Map> socialButtons = [
    {
      'name': 'GitHub',
      'icon': FontAwesomeIcons.github,
      'link': 'https://github.com/abrarinfo',
    },
    {
      'name': 'LinkedIn',
      'icon': FontAwesomeIcons.linkedinIn,
      'link': 'https://linkedin.com',
    },
    {
      'name': 'Twetter',
      'icon': FontAwesomeIcons.twitter,
      'link': 'https://twitter.com/abrarul_info',
    },
    {
      'name': 'Facebook',
      'icon': FontAwesomeIcons.facebook,
      'link': 'https://www.facebook.com/abrarulinfo',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Wrap(
          children: [
            for (int i = 0; i < socialButtons.length; i++)
              Container(
                width: 200,
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        socialButtons[i]['icon'],
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        socialButtons[i]['name'],
                        style: TextStyle(
                          fontFamily: 'Inconsolata',
                        ),
                      ),
                    ],
                  ),
                  onPressed: () async {
                    String url = socialButtons[i]['link'];
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
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

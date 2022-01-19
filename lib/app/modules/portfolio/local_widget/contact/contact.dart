import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyContact extends StatelessWidget {
  MyContact({Key? key}) : super(key: key);

  List<IconData> ButtonIcon = [
    FontAwesomeIcons.houseUser,
    FontAwesomeIcons.phoneAlt,
    FontAwesomeIcons.envelope,
    FontAwesomeIcons.github,
  ];

  List<String> contactInfo = [
    'Gazipur, Dhaka, Bangladesh',
    '01793733533',
    'abrarulhaque003@gmail.com',
    'https://github.com/abrarinfo'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          children: [
            Text(
              'Contact',
              style: TextStyle(
                fontSize: 40,
                fontFamily: 'Inconsolata',
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
              child: Column(
                children: [
                  for (int i = 0; i < contactInfo.length; i++)
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(left: 40),
                        width: 300,
                        child: Row(
                          children: [
                            Icon(ButtonIcon[i]),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              contactInfo[i],
                              style: TextStyle(
                                fontFamily: 'Inconsolata',
                                fontSize: 17,
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            )
                          ],
                        ),
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
}

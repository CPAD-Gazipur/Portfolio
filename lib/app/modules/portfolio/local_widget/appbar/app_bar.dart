import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/app/routes/app_pages.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 5, 30, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Get.offAndToNamed(Routes.HOME);
            },
            child: Row(
              children: [
                Text(
                  'Devoloper',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Inconsolata',
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Abrar',
                  style: TextStyle(
                    color: Colors.pinkAccent,
                    fontFamily: 'Inconsolata',
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              InkWell(
                child: Text(
                  'Home',
                  style: GoogleFonts.oswald(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  Get.offAndToNamed(Routes.HOME);
                },
              ),
              SizedBox(
                width: 15,
              ),
              InkWell(
                child: Text(
                  'Blog',
                  style: GoogleFonts.oswald(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  Get.offAndToNamed(Routes.BLOG);
                },
              ),
              SizedBox(
                width: 15,
              ),
              InkWell(
                child: Text(
                  'Contact',
                  style: GoogleFonts.oswald(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  Get.offAndToNamed(Routes.CONTACT);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

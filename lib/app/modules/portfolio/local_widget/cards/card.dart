import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  MyCard({Key? key}) : super(key: key);

  List<Map> flutterProjects = [
    {
      'name': 'Simple Gellary',
      'image': 'assets/images/gellary.png',
    },
    {
      'name': 'Stateful Counter',
      'image': 'assets/images/counter.png',
    },
    {
      'name': 'Simple Alphabet',
      'image': 'assets/images/alphabet.png',
    },
  ];

  List<Map> webProjects = [
    {
      'name': 'Weather',
      'image': 'assets/images/weather.png',
    },
    {
      'name': 'Music Player',
      'image': 'assets/images/musicplayer.png',
    },
    {
      'name': 'Curise Queen',
      'image': 'assets/images/curise.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Flutter Projects',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Inconsolata',
                  ),
                ),
                Wrap(
                  children: [
                    for (int i = 0; i < flutterProjects.length; i++)
                      Container(
                        height: 300,
                        width: 300,
                        margin: EdgeInsets.all(50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5.0,
                              spreadRadius: 3.0,
                              offset: Offset(
                                  4.0, 3.0), // shadow direction: bottom right
                            )
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 300,
                              height: 250,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    flutterProjects[i]['image'],
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                flutterProjects[i]['name'],
                                style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'Inconsolata',
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Web Projects',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Inconsolata',
                  ),
                ),
                Wrap(
                  children: [
                    for (int i = 0; i < webProjects.length; i++)
                      Container(
                        height: 300,
                        width: 300,
                        margin: EdgeInsets.all(50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5.0,
                              spreadRadius: 3.0,
                              offset: Offset(
                                  4.0, 3.0), // shadow direction: bottom right
                            )
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 300,
                              height: 250,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    webProjects[i]['image'],
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                webProjects[i]['name'],
                                style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'Inconsolata',
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'This is portfolio',
          style: TextStyle(
            fontSize: 100,
          ),
        ),
      ),
    );
  }
}

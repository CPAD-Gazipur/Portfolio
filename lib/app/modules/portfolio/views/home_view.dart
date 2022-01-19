import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../local_widget/buttons/app_button.dart';
import '../local_widget/circuler_image/circular_image.dart';
import '../local_widget/texts/app_text.dart';
import '../local_widget/appbar/app_bar.dart';

class HomeView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        toolbarHeight: 120,
        title: MyAppBar(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularImage(),
            SizedBox(
              height: 20,
            ),
            AppText(),
            SizedBox(
              height: 20,
            ),
            Appbutton(),
          ],
        ),
      ),
    );
  }
}

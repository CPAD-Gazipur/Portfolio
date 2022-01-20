import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../local_widget/cards/card.dart';
import '../local_widget/appbar/app_bar.dart';

class PortfolioView extends GetView {
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
        child: MyCard(),
      ),
    );
  }
}

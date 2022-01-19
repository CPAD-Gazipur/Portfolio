import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../local_widget/contact/contact.dart';
import '../local_widget/appbar/app_bar.dart';

class ContactView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        toolbarHeight: 120,
        title: MyAppBar(),
      ),
      body: MyContact(),
    );
  }
}

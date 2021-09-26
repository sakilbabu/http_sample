import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_page_controller.dart';

class HomePage extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GetBuilder<HomePageController>(
          init: Get.put(HomePageController()),
          builder: (controller) {
            return controller.anime == null
                ? CircularProgressIndicator()
                : ListTile(
                    title: Text(controller.anime!.anime),
                    subtitle: Text(controller.anime!.quote),
                  );
          },
        ),
      ),
    );
  }
}

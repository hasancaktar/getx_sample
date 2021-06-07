import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/pages/home/home_controller.dart';
import 'package:getx_sample/routes/app_routes.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("GetView Örneği"),
              onPressed: () => Get.toNamed(
                AppRoutes.GETVIEW,
                arguments: {'name': 'Mobiler'},
              ),
            ),
            ElevatedButton(
              child: Text("Count örneği"),
              onPressed: () => Get.toNamed(
                AppRoutes.COUNT,

              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(middleText: "Dialog ekranı",title: "Merhaba");
              },
              child: Text('dialog örneği'),
            ),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              onPressed: () {
                Get.snackbar("merhaba", "Snackbar ekranı");
              },
              child: Text('Snackbar örneği'),
            ),
            ElevatedButton(
              onPressed: () =>
                Get.changeTheme(Get.isDarkMode? ThemeData.light(): ThemeData.dark()),
              child: Text('Tema değiştirme'),
            )
          ],
        ),
      ),
    );
  }
}

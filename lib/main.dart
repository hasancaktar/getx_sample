import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_sample/routes/app_pages.dart';
import 'package:getx_sample/routes/app_routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      title: "Getx App",
      initialRoute: AppRoutes.HOME,
      getPages: AppPages.list,
      debugShowCheckedModeBanner: false,
    );
  }
}

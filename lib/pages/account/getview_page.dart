import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/pages/account/getview_controller.dart';

class GetViewPage extends GetView<GetViewController> {
  @override

  ///Get.find() kullanmaya gerek kalmadan GetView ile Controller'a erişme örneği
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
              "GetView ile get.find() kullanmadan controller'a erişme örneği",
              style: TextStyle(
                fontSize: 20.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Text(controller.name),
          ),
          ElevatedButton(onPressed: () => Get.back(), child: Text("Geri"))
        ],
      ),
    );
  }
}

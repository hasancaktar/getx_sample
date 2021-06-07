import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/pages/count/count_controller.dart';

class CountPoage extends StatelessWidget {
  final CountController _countController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                'State değişikliklerini gözlemlemek için sayaç widgetini Obx() ile sardık.',
                style: TextStyle(
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20.0),
            IconButton(
              onPressed: () {
                _countController.artir();
              },
              iconSize: 60.0,
              icon: Icon(
                Icons.add_circle,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Obx(
                  () => Text(
                '${_countController.count}',
                style: TextStyle(
                  fontSize: 32.0,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            IconButton(
              onPressed: () {
                _countController.azalt();
              },
              iconSize: 60.0,
              icon: Icon(
                Icons.remove_circle,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text('Geri'),
            ),
          ],
        ),
      ),
    );
  }
}

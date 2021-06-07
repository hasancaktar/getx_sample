import 'package:get/get.dart';
import 'package:getx_sample/pages/account/getview_controller.dart';

import 'count_controller.dart';

class CountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CountController>(() => CountController());
  }
}

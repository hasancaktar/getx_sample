import 'package:get/get.dart';

class CountController extends GetxController {
  var count = 0.obs; //observable ile anlık olarak dinlemek istediğimiz veri
  artir() => count++;
  azalt() => count--;
}

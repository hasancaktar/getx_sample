import 'package:get/get.dart';
import 'package:getx_sample/pages/account/getview_binding.dart';
import 'package:getx_sample/pages/account/getview_page.dart';
import 'package:getx_sample/pages/count/count_binding.dart';
import 'package:getx_sample/pages/count/count_page.dart';
import 'package:getx_sample/pages/home/home_binding.dart';
import 'package:getx_sample/pages/home/home_page.dart';
import 'package:getx_sample/routes/app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.GETVIEW,
      page: () => GetViewPage(),
      binding: GetViewBinding(),
    ),
    GetPage(
      name: AppRoutes.COUNT,
      page: () => CountPoage(),
      binding: CountBinding(),
    ),
  ];
}

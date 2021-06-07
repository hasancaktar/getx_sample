import 'package:get/get.dart';
import 'package:getx_sample/pages/account/getview_controller.dart';

class GetViewBinding extends Bindings {
  @override
  void dependencies() {
    ///sadece çağırıldığı zaamn yüklenmesini istediğimiz için lazyPut ile kulandık. Performans için daha iyidir.
    Get.lazyPut<GetViewController>(() => GetViewController());
  }
}

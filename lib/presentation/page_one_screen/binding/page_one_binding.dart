import '../controller/page_one_controller.dart';
import 'package:get/get.dart';

class PageOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PageOneController());
  }
}

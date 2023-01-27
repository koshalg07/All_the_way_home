import '../controller/landing_page_with_logo_controller.dart';
import 'package:get/get.dart';

class LandingPageWithLogoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LandingPageWithLogoController());
  }
}

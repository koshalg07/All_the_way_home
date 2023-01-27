import 'package:all_the_way_home/core/app_export.dart';
import 'package:all_the_way_home/presentation/landing_page_with_logo_screen/models/landing_page_with_logo_model.dart';

class LandingPageWithLogoController extends GetxController {
  Rx<LandingPageWithLogoModel> landingPageWithLogoModelObj =
      LandingPageWithLogoModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

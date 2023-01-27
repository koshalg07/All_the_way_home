import 'package:all_the_way_home/core/app_export.dart';


import '../models/home_page_model.dart';

class HomePageController extends GetxController {
  Rx<HomePageModel> homePageModelObj =
      HomePageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

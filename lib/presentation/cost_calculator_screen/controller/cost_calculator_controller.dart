import 'package:all_the_way_home/core/app_export.dart';
import 'package:all_the_way_home/presentation/cost_calculator_screen/models/cost_calculator_model.dart';

class CostCalculatorController extends GetxController {
  Rx<CostCalculatorModel> costCalculatorModelObj = CostCalculatorModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

import '../controller/cost_calculator_controller.dart';
import 'package:get/get.dart';

class CostCalculatorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CostCalculatorController());
  }
}

import 'package:alhadith/presentation/stateManager/databaseController.dart';
import 'package:get/get.dart';

class ControllerBinder extends Bindings{
  @override
  void dependencies() {
    Get.put(HadithController());

  }
}
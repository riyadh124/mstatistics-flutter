import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../quiz/views/quiz_view.dart';

class ModuleController extends GetxController {
  //TODO: Implement ModuleController
  final box = GetStorage();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  finishModule() {
    box.write('moduleProgress', 1.0);
    print("Module Progressr : ${box.read('moduleProgress')}");
    Get.to(QuizView());
  }
}

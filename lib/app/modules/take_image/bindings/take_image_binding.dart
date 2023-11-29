import 'package:get/get.dart';

import '../controllers/take_image_controller.dart';

class TakeImageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TakeImageController>(
      () => TakeImageController(),
    );
  }
}

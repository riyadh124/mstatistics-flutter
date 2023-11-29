import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:m_statistics/app/modules/home/views/home_view.dart';

class DiscussionController extends GetxController {
  //TODO: Implement DiscussionController
  final box = GetStorage();
  final answer = [{}];
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

  finishDiscuss() {
    box.write('discussProgress', 1.0);
    print("Discuss Progressr : ${box.read('discussProgress')}");
    Get.offAll(HomeView());
  }
}

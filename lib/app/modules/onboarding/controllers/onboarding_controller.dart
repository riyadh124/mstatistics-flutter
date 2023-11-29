import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:m_statistics/app/modules/home/views/home_view.dart';

class OnboardingController extends GetxController {
  //TODO: Implement OnboardingController

  final box = GetStorage();

  var audio = Audio(
    'assets/audios/rock.mp3',
    //playSpeed: 2.0,
  );

  final player = AudioPlayer();

  void playSound() async {
    await player.play(AssetSource('images/game-music.mpeg'));
    print("playing sound");
  }

  void loop() {
    player.setReleaseMode(ReleaseMode.loop);
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    playSound();
    loop();
    if (box.read('isUserExist') == true) {
      // box.write('moduleProgress', 1.0);
      // box.write('quizProgress', 0.0);
      // box.write('discussProgress', 0.0);
      Get.off(HomeView());
    } else {
      box.write('userScore', 0);
      box.write('isUserScoreExist', false);
      box.write('moduleProgress', 0.0);
      box.write('quizProgress', 0.0);
      box.write('discussProgress', 0.0);
    }
  }

  @override
  void onClose() {
    super.onClose();
  }
}

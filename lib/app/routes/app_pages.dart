import 'package:get/get.dart';

import '../modules/discussion/bindings/discussion_binding.dart';
import '../modules/discussion/views/discussion_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/module/bindings/module_binding.dart';
import '../modules/module/views/module_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/quiz/bindings/quiz_binding.dart';
import '../modules/quiz/views/quiz_view.dart';
import '../modules/score/bindings/score_binding.dart';
import '../modules/score/views/score_view.dart';
import '../modules/take_image/bindings/take_image_binding.dart';
import '../modules/take_image/views/take_image_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONBOARDING;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.TAKE_IMAGE,
      page: () => TakeImageView(),
      binding: TakeImageBinding(),
    ),
    GetPage(
      name: _Paths.MODULE,
      page: () => ModuleView(),
      binding: ModuleBinding(),
    ),
    GetPage(
      name: _Paths.QUIZ,
      page: () => QuizView(),
      binding: QuizBinding(),
    ),
    GetPage(
      name: _Paths.DISCUSSION,
      page: () => DiscussionView(),
      binding: DiscussionBinding(),
    ),
    GetPage(
      name: _Paths.SCORE,
      page: () => ScoreView(),
      binding: ScoreBinding(),
    ),
  ];
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:m_statistics/app/modules/discussion/views/discussion_view.dart';
import 'package:m_statistics/app/modules/home/views/home_view.dart';
import 'package:m_statistics/app/modules/score/views/score_view.dart';
import 'package:m_statistics/app/modules/widgets/result.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../widgets/quiz.dart';
import '../controllers/quiz_controller.dart';

class QuizView extends GetView<QuizController> {
  QuizView({Key? key}) : super(key: key);
  @override
  var controller = Get.put(QuizController());
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Obx(
          () => controller.questionIndex.value < controller.questions.length
              ? IconButton(
                  onPressed: () {
                    Get.offAll(HomeView());
                  },
                  icon: Icon(Icons.close),
                  color: Colors.black,
                )
              : IconButton(
                  onPressed: () {
                    Get.offAll(DiscussionView());
                  },
                  icon: Icon(
                    Icons.done,
                    size: 40,
                  ),
                  color: Colors.green,
                ),
        ),
        title: Obx(
            () => controller.questionIndex.value < controller.questions.length
                ? LinearPercentIndicator(
                    padding: EdgeInsets.all(0),
                    width: MediaQuery.of(context).size.width - 100,
                    animation: false,
                    backgroundColor: Color(0xFFE4F8DF),
                    lineHeight: 20.0,
                    animationDuration: 2500,
                    percent: double.parse("${controller.quizProgress.value}"),
                    barRadius: Radius.circular(10),
                    progressColor: Colors.green,
                  )
                : Container()),
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: <Widget>[
          const SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Opacity(
                  opacity: 0.1,
                  child: Image(
                    image: AssetImage('assets/images/peakpx.jpg'),
                  ),
                )
              ],
            ),
          ),
          Obx(
            () => controller.questionIndex.value < controller.questions.length
                ? Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Quiz(
                      answerQuestion: controller.answerQuestion,
                      questionIndex: controller.questionIndex.value,
                      questions: controller.questions,
                    ),
                  ) //Quiz
                : Result(controller.totalScore.value, controller.resetQuiz),
          ),
        ],
      ), //Padding
    ); //MaterialApp
  }
}

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class QuizController extends GetxController {
  //TODO: Implement QuizController

  final questions = const [
    {
      'questionText':
          'Diketahui himpunan A = {2,3,4,5} dan himpunan B = {4,6,8,10} jika ditentukan dengan pasangan berurutan (2,4),(3,6),(4,8),(5,10), maka relasi pada himpunan di atas adalah …',
      'questionImage': null,
      'answers': [
        {'text': 'Kuadarat dua', 'score': 0},
        {'text': 'Kali dua', 'score': 0},
        {'text': 'Setengah', 'score': 10},
        {'text': 'Kuadarat tiga', 'score': 0},
      ],
    },
    {
      'questionText':
          'Diketahui pada himpunan pasangan berurutan{ (3,9),(4,16),(5,25)} dengan ini himpunan yang diketahui dapat disebut himpunan …',
      'questionImage': null,
      'answers': [
        {'text': 'Kuadrat dua', 'score': 10},
        {'text': 'Kali dua', 'score': 0},
        {'text': 'Setengah', 'score': 0},
        {'text': '5Kuadrat tiga', 'score': 0},
      ],
    },
    {
      'questionText':
          'Diketahui himpunan pasangan berurutan\n(i){ (0,0),(2,1),(4,2),(6,3) }\n(ii){ (1,3),(2,3),(1,4),(2,4) }\n(iii){ (1,5),(2,5),(3,5),(4,5) }\n(iv){ (5,1),(5,2),(4,1),(4,2) }\nHimpunan pasangan berurtan yang merupakan pemetaan (fungsi) adalah …',
      'questionImage': null,
      'answers': [
        {'text': '(i) dan (ii)', 'score': 0},
        {'text': '(ii) dan (iii)', 'score': 0},
        {'text': '(i) dan (iii)', 'score': 10},
        {'text': '(ii) dn (iv)', 'score': 0},
      ],
    },
    {
      'questionText':
          'Diketahui himpunan pasangan kuadrat  dua\nI. { (1,3),(1,2),(2,4),(2,5) }\nII. { (2,4),(3,9),(4,16),(5,25) }\nIII. { (1,1),(3,9),(5,25),(7,49) }\nIV. { (1,2),(3,4),(5,6),(7,8) }\nManakah himpunan pasangan kuadrat dua yang benar …',
      'questionImage': null,
      'answers': [
        {'text': '(i) dan (ii)', 'score': 0},
        {'text': '(ii) dan (iii)', 'score': 0},
        {'text': '(ii) dan (iv)', 'score': 0},
        {'text': '(i) dn (iii)', 'score': 10},
      ],
    },
    {
      'questionText':
          'Diketahui  A = {1,2,3,} dan himpunan B = {a,b} banyaknya pemetaan yang mungkin dari A ke B adalah ….',
      'questionImage': null,
      'answers': [
        {'text': '3', 'score': 0},
        {'text': '6', 'score': 0},
        {'text': '9', 'score': 10},
        {'text': '12', 'score': 0},
      ],
    },
    {
      'questionText':
          'Jika x = {a,b,c} dan y = {1,2,3}, maka banyaknya korespondensi satu – satu yang mungkin dari x ke y adalah … ',
      'questionImage': null,
      'answers': [
        {'text': '3', 'score': 0},
        {'text': '6', 'score': 10},
        {'text': '9', 'score': 0},
        {'text': '12', 'score': 0},
      ],
    },
    {
      'questionText':
          'Jika diketahui f(x) = 2x - 5 dan f(x) = 3 maka nilai dari x adalah …',
      'questionImage': null,
      'answers': [
        {'text': '2', 'score': 0},
        {'text': '6', 'score': 0},
        {'text': '4', 'score': 10},
        {'text': '8', 'score': 0},
      ],
    },
    {
      'questionText':
          'Jika diketahui f(x) = mx + n, f(-1) = 2 dan f(1) = 6 tentukan nilai dari m dan n',
      'questionImage': null,
      'answers': [
        {'text': 'm = 2 dan n = 3', 'score': 0},
        {'text': 'm = 4 dan n = 2', 'score': 0},
        {'text': 'm = 3 dan n = 2', 'score': 0},
        {'text': 'm = 2 dan n = 4', 'score': 10},
      ],
    },
    {
      'questionText':
          'Fungsi f ditentukan oleh f(x) = ax + b. Jika pasangan-pasangan berurutan (p, -3), (-3,q), (r,2), (2, -2) dan (-2, 6) adalah anggota dari fungsi itu, nilai p, q, dan r adalah ....',
      'questionImage': null,
      'answers': [
        {'text': 'p = 5/2, q = 8 dan r = 0', 'score': 10},
        {'text': 'p = 5/2, q = 0 dan r = 8', 'score': 0},
        {'text': 'p = 0, q = 5/2 dan r = 8', 'score': 0},
        {'text': 'p = 0, q = 8 dan r = 5/2', 'score': 0},
      ],
    },
    {
      'questionText':
          'Diketahui himpunan A = {Bilangan ganjil kurang dari 11} dan B = {Bilangan genap kurang dari 11} makanya berapa korespondensi satu – satu',
      'questionImage': null,
      'answers': [
        {'text': '150', 'score': 0},
        {'text': '120', 'score': 10},
        {'text': '100', 'score': 0},
        {'text': '50', 'score': 0},
      ],
    },
  ];

  var questionIndex = 0.obs;
  var totalScore = 0.obs;
  var quizProgress = 0.0.obs;

  void resetQuiz() {
    questionIndex = 0.obs;
    totalScore = 0.obs;
    update();
    print("Resetting Question");
  }

  final box = GetStorage();

  void answerQuestion(int score) {
    totalScore += score;

    questionIndex.value = questionIndex.value + 1;
    quizProgress = double.parse("0.${questionIndex.value}").obs;

    // ignore: avoid_print
    print(questionIndex);
    print(totalScore);
    if (questionIndex < questions.length) {
      // ignore: avoid_print
      print('We have more questions!');
      box.write('quizProgress', (questionIndex.value + 1) / 10);
      print("quiz Progressr : ${box.read('quizProgress')}");
    } else {
      // ignore: avoid_print
      box.write('isUserScoreExist', true);
      box.write('userScore', totalScore.value);
      print('No more questions!');
      box.write('quizProgress', 1.0);
      print("quiz Progressr : ${box.read('quizProgress')}");
      quizProgress = 1.0.obs;
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    print("quiz Progressr : ${box.read('quizProgress')}");
    if (box.read('quizProgress') != 0.0) {
      double x = box.read('quizProgress');
      int y = 10;
      var z = x * y;
      print(z.toStringAsFixed(0));
      questionIndex.value = int.parse(z.toStringAsFixed(0));
      quizProgress.value = box.read('quizProgress');
      totalScore.value = box.read('userScore');
    }
  }

  @override
  void onClose() {
    super.onClose();
  }
}

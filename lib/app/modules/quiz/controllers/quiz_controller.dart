import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class QuizController extends GetxController {
  //TODO: Implement QuizController

  final questions = const [
    //No 1
    {
      'questionText':
          'Diketahui himpunan A = {2,3,4,5} dan himpunan B = {4,6,8,10} jika  ditentukan dengan pasangan berurutan (2,4),(3,6),(4,8),(5,10), maka  relasi dari himpunan A ke B adalah …',
      'questionImage': null,
      'answers': [
        {'text': 'Kuadrat dua dari', 'score': 0},
        {'text': 'Kali dua dari', 'score': 0},
        {'text': 'Setengah dari', 'score': 10},
        {'text': 'kuadrat tiga dari', 'score': 0},
      ],
    },

    //No 2
    {
      'questionText':
          'Diketahui	pada	himpunan	pasangan	berurutan{	(3,9),(4,16),(5,25)}  dengan ini himpunan yang diketahui dapat disebut himpunan …',
      'questionImage': null,
      'answers': [
        {'text': 'Akar dua dari', 'score': 10},
        {'text': 'Kali dua dari', 'score': 0},
        {'text': 'Setengah dari', 'score': 0},
        {'text': 'Kuadrat tiga dari', 'score': 0},
      ],
    },
    // No 3
    {
      'questionText':
          'Diketahui A = { Jakarta, Bangkok, Tokyo, Seoul } dan himpunan B = {  indonesia, jepang, Thailand, Korea Selatan } relasi dari A ke B dapat dinyatakan…',
      'questionImage': null,
      'answers': [
        {'text': 'Ibu kota dari negara', 'score': 10},
        {'text': 'Provinsi dari negara', 'score': 0},
        {'text': 'Salah satu kota dari negara', 'score': 0},
        {'text': 'Wilayah negara', 'score': 0},
      ],
    },
    //No 4
    {
      'questionText':
          'Diketahui himpunan pasangan berurutan\n{ (0,0),(2,1),(4,2),(6,3) }\n{ (1,3),(2,3),(1,4),(2,4) }\n{ (1,5),(2,5),(3,5),(4,5) }\n{ (5,1),(5,2),(4,1),(4,2) }\nHimpunan pasangan berurtan yang merupakan pemetaan (fungsi) adalah …',
      'questionImage': null,
      'answers': [
        {'text': '(i) dan (ii)', 'score': 0},
        {'text': '(ii) dan (iii)', 'score': 0},
        {'text': '(i) dan (iii)', 'score': 10},
        {'text': '(ii) dn (iv)', 'score': 0},
      ],
    },
    //No 5
    {
      'questionText':
          'Diketahui himpunan pasangan kuadrat  dua\n{ (1,3),(1,2),(2,4),(2,5) }\n{ (2,4),(3,9),(4,16),(5,25) }\n{ (1,1),(3,9),(5,25),(7,49) }\n{ (1,2),(3,4),(5,6),(7,8) }\nManakah himpunan pasangan kuadrat dua yang benar …',
      'questionImage': null,
      'answers': [
        {'text': '(i) dan (ii)', 'score': 0},
        {'text': '(i) dan (iii)', 'score': 0},
        {'text': '(i) dan (iv)', 'score': 0},
        {'text': '(ii) dn (iii)', 'score': 10},
      ],
    },
    //No 6
    {
      'questionText':
          'Diketahui  A = {1,2,3,} dan himpunan B = {a,b} banyaknya pemetaan yang mungkin dari A ke B adalah …. ',
      'questionImage': null,
      'answers': [
        {'text': '3', 'score': 0},
        {'text': '6', 'score': 0},
        {'text': '9', 'score': 10},
        {'text': '12', 'score': 0},
      ],
    },
    // No 7
    {
      'questionText':
          'Jika x = {a,b,c} dan y = {1,2,3}, maka banyaknya korespondensi satu – satu yang mungkin dari 𝑥 ke y adalah … ',
      'questionImage': null,
      'answers': [
        {'text': '3', 'score': 0},
        {'text': '6', 'score': 10},
        {'text': '9', 'score': 0},
        {'text': '12', 'score': 0},
      ],
    },
    //No 8
    {
      'questionText':
          'Diketahui himpunan A = {Bilangan ganjil kurang dari 11} dan B = {Bilangan genap kurang dari 11} banyak korespondensi satu – satu dari A ke B yaitu…',
      'questionImage': null,
      'answers': [
        {'text': '150', 'score': 0},
        {'text': '120', 'score': 10},
        {'text': '100', 'score': 0},
        {'text': '50', 'score': 0},
      ],
    },
    // No 9
    {
      'questionText':
          'Himpunan pasangan berurutan yang merupakan korespondensi satu-satu adalah…',
      'questionImage': null,
      'answers': [
        {'text': '{(1,a),(2,a),(3,b)}', 'score': 0},
        {'text': '{(1,a),(2,b),(2,c)}', 'score': 0},
        {'text': '{(1,a),(2,b),(3,b)}', 'score': 0},
        {'text': '{(1,a),(2,b),(3,c)}', 'score': 10},
      ],
    },
    // Question level 10
    {
      'questionText':
          'Diketahui n(A) = 4 dan n(B) = 4. Banyak korespondensi satu-satu yang mungkin dari A ke B adalah ...',
      'questionImage': null,
      'answers': [
        {'text': '16', 'score': 0},
        {'text': '24', 'score': 10},
        {'text': '36', 'score': 0},
        {'text': '64', 'score': 0},
      ],
    },
    // Question level 11
    {
      'questionText':
          'Jika diketahui 𝑓(𝑥)=2𝑥−5 dan 𝑓(𝑥)=3 maka nilai dari 𝑥 adalah …',
      'questionImage': null,
      'answers': [
        {'text': '2', 'score': 0},
        {'text': '6', 'score': 0},
        {'text': '4', 'score': 10},
        {'text': '8', 'score': 0},
      ],
    },
    // Question level 12
    {
      'questionText':
          'Jika diketahui 𝑓(𝑥)=𝑚𝑥+𝑛, 𝑓(−1)=2 dan 𝑓(1)=6 tentukan nilai dari 𝑚 dan 𝑛 adalah …',
      'questionImage': null,
      'answers': [
        {'text': 'm = 2 dan n = 3', 'score': 0},
        {'text': 'm = 4 dan n =2', 'score': 0},
        {'text': 'm = 3 dan n = 2', 'score': 0},
        {'text': 'm = 2 dan n = 4', 'score': 10},
      ],
    },
    // Question level 13
    {
      'questionText':
          'Diketahui fungsi 𝑓(𝑥)=−2𝑥+3. Nilai dari 𝑓(𝑎+5) adalah.. ',
      'questionImage': null,
      'answers': [
        {'text': '2a+13', 'score': 0},
        {'text': '2a+7', 'score': 0},
        {'text': '-2a-13', 'score': 0},
        {'text': '-2a-7', 'score': 10},
      ],
    },
    // Question level 14
    {
      'questionText':
          'Fungsi f dinyatakan dengan f(x)=3x+5 hasil dari f(2b-3) adalah…',
      'questionImage': null,
      'answers': [
        {'text': '5b + 8', 'score': 0},
        {'text': '5b + 2', 'score': 0},
        {'text': '6b - 4', 'score': 10},
        {'text': '6b - 5', 'score': 0},
      ],
    },
    // Question level 15
    {
      'questionText':
          'Suatu fungsi didefinisikan sebagai  𝑓(𝑥)=2𝑥−2 hasil dari {𝑥│−1≤𝑥≤2,∈𝐵} maka daerah hasil adalah …',
      'questionImage': null,
      'answers': [
        {'text': '{−3, −1,1,2}', 'score': 0},
        {'text': '{−4, −2,0,2}', 'score': 10},
        {'text': '{−2,0,3,4}', 'score': 0},
        {'text': '{−1,0,3,4}', 'score': 0},
      ],
    },
    // Question level 16
    {
      'questionText':
          'Diketahui\nP = (bilangan kelipatan 7 kurang dari 24)\nQ = (bilangan prima kurang dari 11)\nBanyaknya pemetaan yang mungkin dari P ke Q adalah ... .',
      'questionImage': null,
      'answers': [
        {'text': '12', 'score': 0},
        {'text': '24', 'score': 0},
        {'text': '64', 'score': 10},
        {'text': '81', 'score': 0},
      ],
    },
    // Question level 17
    {
      'questionText':
          'Pada pemetaan 𝑓 : 𝑥 = 𝑥² + 2𝑥 – 2, bayangan dari 2 adalah ... ',
      'questionImage': null,
      'answers': [
        {'text': '2', 'score': 0},
        {'text': '4', 'score': 0},
        {'text': '6', 'score': 10},
        {'text': '8', 'score': 0},
      ],
    },
    // Question level 18
    {
      'questionText':
          'Diketahui rumus fungsi 𝑓(𝑥)=2𝑥−5 jika 𝑓(𝑘)=−15 nilai k adalah… ',
      'questionImage': null,
      'answers': [
        {'text': '-10', 'score': 0},
        {'text': '-5', 'score': 10},
        {'text': '5', 'score': 0},
        {'text': '-10', 'score': 0},
      ],
    },
    // Question level 19
    {
      'questionText':
          'Suatu fungsi didefinisikan rumus 𝑓(𝑥)=3−5𝑥. Nilai 𝑓(4) adalah…',
      'questionImage': null,
      'answers': [
        {'text': '-17', 'score': 0},
        {'text': '-23', 'score': 0},
        {'text': '23', 'score': 10},
        {'text': '17', 'score': 0},
      ],
    },
    // Question level 20
    {
      'questionText': 'jika 𝑓(𝑥−1)=2𝑥+. Nilai 𝑓(2) adalah…',
      'questionImage': null,
      'answers': [
        {'text': '8', 'score': 0},
        {'text': '9', 'score': 10},
        {'text': '10', 'score': 0},
        {'text': '11', 'score': 0},
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

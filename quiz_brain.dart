import 'package:quizz/question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question('Alguns gatos são alérgicos a humanos', true),
    Question(
        'É possível fazer com que uma vaca suba escadas, mas não descê-las.',
        false),
    Question(
        'O ser humano possui 206 ossos', true),
    Question('O sangue de uma lesma é verde.', true),
    Question('O nome de solteira da mãe de Buzz Aldrin era \"Moon\".', true),
    Question('É ilegal urinar no oceano, em Portugal.', true),
    Question(
        'Nenhum pedaço quadrado de papel pode ser dobrado mais do que 7 vezes.',
        false),
    Question(
        'Em Londres, se você morrer no Parlamento, você tem direito a um funeral de estado, porque o prédio é considerado um local sagrado.',
        true),
    Question(
        'O som mais forte produzido por qualquer animal é de 188dB. Esse animal é o elefante africano.',
        false),
    Question(
        'A área total dos dois pulmões de um humano é de aproximadamente 70 metros quadrados.',
        true),
    Question('Google foi chamado, originalmente de \"Backrub\".', true),
    Question(
        'Os coelhos precisam ter pelo menos 1 parceiro(a) para não morrerem de solidão.',
        true),
    Question(
        'A aranha marrom não é a aranha mais letal do mundo.',
        true),
  ];

  String getQuestionText() {
    return _questionBank[_questionNumber].text;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].answer;
  }

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    return _questionNumber == _questionBank.length - 1;
  }

  void reset() {
    _questionNumber = 0;
  }
}
import 'dart:math';

class Game {
  int answer = 0;
  var r = Random();
  List<int> myList = [];
  int count=0;
  int sumguesses =0;
  var maxRandom;
  static const defultmaxrandom = 100;

  Game({int maxRd=defultmaxrandom}) {

    answer = r.nextInt(maxRd) + 1;
    print('Answer is $answer');
  }
  int doGuess(int num) {
    if (num > answer) {
      print('╟───────────────────────────────────────────────────╢');
      print('║                 ✗ $num is TOO HIGH ✗                 ║');
      print('╟───────────────────────────────────────────────────╢');
      count++;
      sumguesses = count;
      return 1;
    } else if (num < answer) {
      print('╟───────────────────────────────────────────────────╢');
      print('║                 ✗ $num is TOO LOW ✗                  ║');
      print('╟───────────────────────────────────────────────────╢');
      count++;
      sumguesses = count;
      return 2;
    } else {
      print('╟───────────────────────────────────────────────────╢');
      print('║                ✓ $num is Correct ✓                   ║');
      count++;
      sumguesses = count;
      print('║                TOTAL GUESSES : $count                  ║');
      print('╟───────────────────────────────────────────────────╢');
      print('║                     THE END                       ║');
      print('╚═══════════════════════════════════════════════════╝');
      count = 0;
     // print('$sumguesses');

      myList.add(count);


      return 3;

    }


  }




}
import 'dart:io';
import 'game.dart';
void main () {
  int result = 0;

  List<int> myList = [];
  List<int> myList1 = [];

  stdout.write('⤷ ENTER MAXIMUM NAMBER TO RANDOM : ');

  var inputmaxRandom = stdin.readLineSync();
  var maxRandom = int.tryParse(inputmaxRandom!);

  var game = Game(maxRandom);
  var count = 0;

  print('╔═══════════════════════════════════════════════════╗');
  print('║                 GUESS THE NUMBER                  ║');
  print('╠═══════════════════════════════════════════════════╣');

  do {
    print('║      Please guess the number between 1 - $maxRandom          ');
    stdout.write('║                       ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == null) {
      print('║               Please Enter Number Only            ║');
      print('║                    ↓ ↓ ↓ ↓ ↓ ↓                    ║');
      continue;
    }

    result = game.doGuess(guess);
    var  sum = game.sumguesses;

    if (result == 3) {
      count++;
      myList.add(count);
      myList1.add(sum);

    }
  } while (result != 3);
  do {
    stdout.write('Play again(Y/N):');

    var str = stdin.readLineSync();

    if (str == "Y" || str == "y") {
      print('----------------------------------------------------✈');


      stdout.write('⤷ ENTER MAXIMUM NAMBER TO RANDOM : ');
      var inputmaxRandom = stdin.readLineSync();
      var maxRandom = int.tryParse(inputmaxRandom!);
      var game = Game(maxRandom!);


      print('╔═══════════════════════════════════════════════════╗');
      print('║                 GUESS THE NUMBER                  ║');
      print('╠═══════════════════════════════════════════════════╣');


      do {
        print(
            '║      Please guess the number between 1 - $maxRandom          ');
        stdout.write('║                       ');


        var input = stdin.readLineSync();
        var guess = int.tryParse(input!);
        if (guess == null) {
          print('║               Please Enter Number Only            ║');
          print('║                    ↓ ↓ ↓ ↓ ↓ ↓                    ║');
          continue;
        }

        result = game.doGuess(guess);
        var  sum = game.sumguesses;

        if (result == 3) {
          count++;
          myList.add(count);
          myList1.add(sum);
        }
      } while (result != 3);
    } else if (str == "N" || str == "n") {
      print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
      print('             🎲 You′ve Played '+count.toString()+' Games 🎲');
      for (var i = 0; i < myList.length; i++) {
        print(' 🏆 Game # ' + myList[i].toString() + ' : '+myList1[i].toString() +'');
      }
      print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');

      break;
    } else if (str == null) {
      print('Play again(Y/N):');
      continue;
    }
  } while (true);
}



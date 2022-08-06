import 'dart:io';
import 'package:guess_number1/game.dart';


void main(){

  int result = 0;
  var play;
  do {
    var game = Game();
    print('╔════════════════════════════════════════════════════════════════════');
    print('║                        GUESS  THE  NUMBER  ');
    print('╟────────────────────────────────────────────────────────────────────');
    do {
      stdout.write('║ Guess the number between 1 and 100 : ');
      var input = stdin.readLineSync();
      var guess = int.tryParse(input!);
      if (guess == null){
        continue;
      }
      result = game.doGuess(guess);
    } while(result != 1);
    print('╟────────────────────────────────────────────────────────────────────');
    print('║                                END ');
    print('╚════════════════════════════════════════════════════════════════════');
    stdout.write('Would you like to play again? (y/n) : ');
    play = stdin.readLineSync();
  } while (play == 'y');
}
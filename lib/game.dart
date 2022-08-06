import 'dart:math';

class Game{
  int answer = 0; //instance field
  int count = 0;

  Game() {
    var r = Random();
    answer = r.nextInt(100) + 1;
    //print('คำตอบคือ $answer');
  }

  int doGuess(int num){
    if (num > answer){
      print('║ ➜ $num is TOO HIGH! ▲');
      print('╟────────────────────────────────────────────────────────────────────');
      count++;
      return 0;
    }else if (num < answer){
      count++;
      print('║ ➜ $num is TOO LOW! ▼');
      print('╟────────────────────────────────────────────────────────────────────');
      return 0;
    }else{
      count++;
      print('║ ➜ $num is CORRECT ❤ , total guesses: $count');
      return 1;
    }
  }
}
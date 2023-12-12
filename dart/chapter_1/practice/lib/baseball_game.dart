import 'dart:io';

(int, int, int) judge(String com, String player) {
  int strike = 0;
  int ball = 0;
  int out = 0;

  for (int i = 0; i < com.length; i++) {
    if (com[i] == player[i]) {
      strike++;
    } else if (com.contains(player[i])) {
      ball++;
    } else {
      out++;
    }
  }

  return (strike, ball, out);
}

String generateCom() {
  List<String> numbers = ["1", "2", "3", "4", "5", "6", "7", "8", "9"];
  numbers.shuffle();
  return numbers.sublist(0, 3).join();
}

String playerInput() {
  print("3자리 숫자를 입력해주세요 ex) 123");
  String? input = stdin.readLineSync();
  while (!checkValidNumber(input)) {
    print("3자리 숫자를 다시 입력해주세요 ex) 123");
    input = stdin.readLineSync();
  }

  return input!;
}

bool checkValidNumber(String? inputNumber) {
  if (inputNumber == null) {
    print("입력값이 없습니다.");
    return false;
  } else if (inputNumber.length != 3) {
    print("3자리 숫자를 입력해주세요.");
    return false;
  }

  for (var i in inputNumber.split("")) {
    if (i == "0") {
      print("0은 입력할 수 없습니다.");
      return false;
    }

    if (int.tryParse(i) == null) {
      print("숫자만 입력해주세요.");
      return false;
    }

    var count = 0;
    for (var j in inputNumber.split("")) {
      if (i == j) {
        count++;
      }
    }

    if (count > 1) {
      print("중복되지 않은 숫자를 입력해주세요.");
      return false;
    }
  }
  return true;
}

void game([String? givenGame]) {
  String com = checkValidNumber(givenGame) ? givenGame! : generateCom();
  print("컴퓨터가 숫자를 생성했습니다. 맞춰보세요.");

  while (true) {
    String player = playerInput();
    var (strike, ball, out) = judge(com, player);
    print("$strike 스트라이크, $ball 볼, $out 아웃");
    if (strike == 3) {
      print("정답입니다.");
      break;
    }
  }
}
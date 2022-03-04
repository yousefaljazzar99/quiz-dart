import 'dart:io';

class Exam {
  String question;
  double answer;
  Exam({
    required this.question,
    required this.answer,
  });
}

double getanswer(String msg) {
  print('The Question is  $msg');
  var answer = double.tryParse(stdin.readLineSync()!) ?? 0.0;
  return answer;
}

double restart() {
  print('Do you need restart');
  print('1 = yes');
  print('2 = no');
  var user = double.tryParse(stdin.readLineSync()!) ?? 2.0;

  if (user == 1) {
    main();
  } else {
    exit(1);
  }
  return user;
}

void main() {
  var exam = [
    Exam(question: '1 + 1', answer: 2),
    Exam(question: '1 + 2', answer: 3),
    Exam(question: '1 + 3', answer: 4),
    Exam(question: '1 + 4', answer: 5),
  ];

  for (var item in exam) {
    var userindex = getanswer(item.question);
    print('The Answer is $userindex');
    if (item.answer == userindex) {
      print('The answer is correct!');
    } else {
      print('Incorrect answer, the correct answer is ${item.answer}');
    }
    print('---------------------------------------');
  }
  restart();
}

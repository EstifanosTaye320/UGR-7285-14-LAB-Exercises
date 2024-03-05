import 'dart:math';

void myFonnyFunction() {
  int someRand = Random().nextInt(3) + 1;
  switch (someRand) {
    case 1:
      throw Exception('some exception');
    case 2:
      throw FormatException('formatException');
  }
}

void main() {
  try {
    myFonnyFunction();
  } catch (e) {
    if (e is FormatException) {
      print('spacial Exception' + e.toString());
    } else {
      print('other Exception' + e.toString());
    }
  }
}

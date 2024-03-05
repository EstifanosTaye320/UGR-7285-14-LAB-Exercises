import 'dart:math';

void main() {
  int number = Random().nextInt(7) + 1;

  switch (number) {
    case 1:
      print('Monday');
      break;
    case 2:
      print('Tuesday');
      break;
    case 3:
      print('Wednessday');
      break;
    case 4:
      print('Thursday');
      break;
    case 5:
      print('Friday');
      break;
    case 6:
      print('Saterday');
      break;
    case 7:
      print('Sunday');
      break;
  }
}

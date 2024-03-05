import 'dart:async';
import 'dart:math';

void main() async {
  Future<int> getNumber =
      Future.delayed(Duration(seconds: 2), () => Random().nextInt(10) + 1);

  int number = await getNumber;
  print(number);

  getNumber.then((int number) {
    print(number);
  });
}

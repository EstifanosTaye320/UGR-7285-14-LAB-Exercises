void myFonnyFunction() {
  throw Exception('some exception');
}

void main() {
  try {
    myFonnyFunction();
  } catch (e) {
    print(e);
  }
}

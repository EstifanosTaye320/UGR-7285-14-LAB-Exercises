double getAvarage(List<num> numList) {
  int totalNumbers = !numList.isEmpty ? numList.length : 0;
  double totalSum = 0.0;
  for (var number in numList) {
    totalSum = totalSum + number;
  }

  return totalSum / totalNumbers;
}

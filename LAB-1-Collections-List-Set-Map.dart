int? getHighest(List<int> numList) {
  if (numList.isEmpty) {
    return null;
  }
  int highest = numList[0];
  for (var number in numList) {
    highest = number > highest ? number : highest;
  }

  return highest;
}

void getKeysAndValues(Map<Object, Object> objMap) {
  print(objMap.keys);
  print(objMap.values);
}

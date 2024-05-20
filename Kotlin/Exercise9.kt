fun convertToUpperCase(strings: List<String>): List<String> {
    return strings.map { it.toUpperCase() }
}

fun filterGreaterThanValue(numbers: List<Int>, value: Int): List<Int> {
    return numbers.filter { it > value }
}

fun calculateSum(numbers: List<Int>): Int {
    return numbers.reduce { acc, num -> acc + num }
}

fun main() {
    val strings = listOf("hello", "world", "kotlin")
    val transformedStrings = convertToUpperCase(strings)
    println("Transformed strings: $transformedStrings")
    
    val numbers = listOf(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    val filteredNumbers = filterGreaterThanValue(numbers, 5)
    println("Filtered numbers: $filteredNumbers")
    
    val sum = calculateSum(numbers)
    println("Sum of numbers: $sum")
}
fun findMax(numbers: List<Int>): Int? {
    if (numbers.isEmpty()) return null
    var max = numbers[0]
    for (num in numbers) {
        if (num > max) {
            max = num
        }
    }
    return max
}

fun filterEvenNumbers(numbers: List<Int>): List<Int> {
    return numbers.filter { it % 2 == 0 }
}

fun calculateAverage(numbers: List<Double>): Double {
    if (numbers.isEmpty()) return 0.0
    val sum = numbers.sum()
    return sum / numbers.size
}

fun main() {
    val numbers = listOf(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    
    val max = findMax(numbers)
    println("Maximum value: $max")
    
    val evenNumbers = filterEvenNumbers(numbers)
    println("Even numbers: $evenNumbers")
    
    val average = calculateAverage(numbers.map { it.toDouble() })
    println("Average: $average")
}
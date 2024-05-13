fun main() {
    val input = "Hello World! This is an Example String."
    val (wordCount, uppercaseCount, vowelCount) = analyzeString(input)
    println("Number of words: $wordCount")
    println("Number of uppercase letters: $uppercaseCount")
    println("Number of vowels: $vowelCount")
}

fun analyzeString(input: String): Triple<Int, Int, Int> {
    val words = input.split("\\s+".toRegex())
    val wordCount = words.size

    val uppercaseCount = input.count { it.isUpperCase() }

    val vowelCount = input.count { it.toLowerCase() in "aeiou" }

    return Triple(wordCount, uppercaseCount, vowelCount)
}
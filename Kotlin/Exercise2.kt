fun main() {
    val valueOriginal: String = "100 meters"
    var newValue: String? = null 
    println("The value in meters is $valueOriginal")
    newValue = conversion(valueOriginal)  
    println("Final answer: $newValue")  
}

fun conversion(value: String): String {
    val (value, unit) = extractValueAndUnit(value)
    println("Value: $value, Unit: $unit")
    return if (unit == "meters") { 
        "The value in kilometers is ${value / 1000.0} kilometers" 
    } else {
        "The value in meters is ${value * 1000.0} meters" 
    }
}

fun extractValueAndUnit(input: String): Pair<Double, String> {
    val parts = input.trim().split("\\s+".toRegex())

    val value = parts[0].toDoubleOrNull() ?: 0.0 
    val unit = parts.subList(1, parts.size).joinToString(" ")

    return Pair(value, unit)
}
import java.util.Scanner

fun main() {
    val scanning = Scanner(System.`in`)
    
    println("Welcome to the grader")
    val input: Double = scanning.nextDouble()
    
    val result: String = if (input in 90.0..100.0) {
        "A"
    } else if (input in 80.0..89.0) {
        "B"
    } else if (input in 70.0..79.0) {
        "C"
    } else if (input in 60.0..69.0) {
        "D"
    } else {
        "F"
    }
    
    println("Your grade is: $result")
    
}
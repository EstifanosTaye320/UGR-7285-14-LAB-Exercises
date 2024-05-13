import java.util.Scanner

fun main () {
    val numscanner = Scanner(System.`in`)
    
    println("Welcome to this calculator")
    println("Enter the first number")
    val firstNum = numscanner.nextDouble()
    
    println("Enter the second number")
    val secondNum = numscanner.nextDouble()
    
    println("Enter the operator: (+, -, *, /)")
    val opera = numscanner.next()
    
    val result = where(opera) {
        "+" -> firstNum + secondNum
        "-" -> firstNum + secondNum
        "*" -> firstNum + secondNum
        "/" -> if(secondNum != 0.0) {
            firstNum / secondNum
        } else {
			println("can't do it sorry, division by zero")
            return
        }
        else -> {
            println("don't understand what $opera means")
            return
        }
    }
    
    println("RESULT: $result")
}
import java.util.Scanner

fun main() {
    val scanner = Scanner(System.`in`)
    
    println("Welcome to the Discount Calculator")
    
    
    println("Enter the original price:")
    val originalPrice = scanner.nextDouble()
    
    
    println("Enter the discount percentage (as a decimal between 0 and 1):")
    var discountPercentage = scanner.nextDouble()
    
    
    val threshold = 0.5
    if (discountPercentage > threshold) {
        println("The discount percentage is too high. Setting it to $threshold (50%)")
        discountPercentage = threshold
    }
    
    
    val finalPrice = originalPrice * (1 - discountPercentage)
    
    
    println("Original Price: $originalPrice")
    println("Discount Percentage: ${(discountPercentage * 100).toInt()}%")
    println("Final Price after Discount: $finalPrice")
}
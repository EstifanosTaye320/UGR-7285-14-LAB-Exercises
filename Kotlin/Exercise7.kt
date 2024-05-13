fun main() {
    val input = "Hello World"
    
    var minChar = input[0]
    var maxChar = input[0]
    
    for (char in input) {
        if (char < minChar && char !in " ") { 
            minChar = char    
        }
        if (char > maxChar) {
            maxChar = char
        }
    }
    
    println("Minimum character: $minChar")
    println("Maximum character: $maxChar")
}
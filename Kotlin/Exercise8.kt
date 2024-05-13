fun main() {
    val passwordLength = 8
    val password = generateRandomPassword(passwordLength)
    println("Generated password: $password")
}

fun generateRandomPassword(length: Int): String {
    val allowedChars = ('A'..'Z') + ('a'..'z') + ('0'..'9') + listOf('!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '_', '+', '-', '=', '{', '}', '[', ']', '|', '\\', ';', ':', '<', '>', ',', '.', '?', '/')
    val password = StringBuilder()

    repeat(length) {
        val randomIndex = (0 until allowedChars.size).random()
        password.append(allowedChars[randomIndex])
    }

    return password.toString()
}
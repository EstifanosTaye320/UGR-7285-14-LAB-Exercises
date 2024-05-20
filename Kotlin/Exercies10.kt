class BankAccount(
    private val accountNumber: String,
    private var balance: Double
) {
    fun deposit(amount: Double) {
        if (amount > 0) {
            balance += amount
            println("$amount deposited successfully.")
        } else {
            println("Invalid amount for deposit.")
        }
    }

    fun withdraw(amount: Double) {
        if (amount > 0) {
            if (balance >= amount) {
                balance -= amount
                println("$amount withdrawn successfully.")
            } else {
                println("Insufficient funds. Cannot withdraw.")
            }
        } else {
            println("Invalid amount for withdrawal.")
        }
    }

    fun printBalance() {
        println("Current balance: $balance")
    }
}
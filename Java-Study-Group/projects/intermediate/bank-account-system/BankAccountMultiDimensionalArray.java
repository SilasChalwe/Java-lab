
// BankAccount class demonstrating multi-dimensional arrays

public class BankAccountMultiDimensionalArray {
    public static void main(String[] args) {
        // Multi-dimensional array representing bank account balances for multiple accounts
        double[][] accountBalances = {
            {1000.0, 500.0},  // Account 1: Initial Balance, Withdrawal
            {1500.0, 200.0}   // Account 2: Initial Balance, Withdrawal
        };

        // Loop through the 2D array and print account balances
        for (int i = 0; i < accountBalances.length; i++) {
            System.out.println("Account " + (i+1) + " - Initial Balance: " + accountBalances[i][0] + ", Withdrawal: " + accountBalances[i][1]);
        }
    }
}

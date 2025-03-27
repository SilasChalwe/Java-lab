
// ATM class demonstrating unchecked exceptions (ArithmeticException)

public class ATMUncheckedException {
    public static void main(String[] args) {
        try {
            // Unchecked exception: ArithmeticException
            int result = 10 / 0; // This will throw ArithmeticException
        } catch (ArithmeticException e) {
            System.out.println("Unchecked Exception: " + e.getMessage());
        }
    }
}

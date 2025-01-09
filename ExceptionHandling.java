public class ExceptionHandling {
    public static void main(String[] args) {
     // Scanner scanner = new Scanner();
        try {
            int result = 10 / 0;
            System.out.println("Result: " + result);
        } catch (ArithmeticException e) {
            System.out.println("Error: Cannot divide by zero.");
        }
    }
}

#!/bin/bash

# Define the base directory where the beginner programs will be saved
base_dir="$HOME/Java-programming/projects/beginner"

# Create the directory if it does not exist
mkdir -p "$base_dir"

# Function to create a Java file with a specific program
create_java_program() {
    filename=$1
    program_content=$2
    echo "$program_content" > "$base_dir/$filename"
    echo "Created $filename"
}

# 1. Hello World Program
hello_world_program="
public class HelloWorld {
    public static void main(String[] args) {
        System.out.println(\"Hello, World!\");
    }
}
"
create_java_program "HelloWorld.java" "$hello_world_program"

# 2. Sum of Two Numbers Program
sum_of_two_numbers_program="
import java.util.Scanner;

public class SumOfTwoNumbers {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print(\"Enter the first number: \");
        int num1 = scanner.nextInt();
        System.out.print(\"Enter the second number: \");
        int num2 = scanner.nextInt();
        int sum = num1 + num2;
        System.out.println(\"The sum is: \" + sum);
        scanner.close();
    }
}
"
create_java_program "SumOfTwoNumbers.java" "$sum_of_two_numbers_program"

# 3. Simple Calculator Program
simple_calculator_program="
import java.util.Scanner;

public class SimpleCalculator {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print(\"Enter first number: \");
        double num1 = scanner.nextDouble();
        System.out.print(\"Enter second number: \");
        double num2 = scanner.nextDouble();
        
        System.out.println(\"Choose an operation: \"+\n\"1. Add\n2. Subtract\n3. Multiply\n4. Divide\");
        int choice = scanner.nextInt();

        double result = 0;
        switch (choice) {
            case 1:
                result = num1 + num2;
                break;
            case 2:
                result = num1 - num2;
                break;
            case 3:
                result = num1 * num2;
                break;
            case 4:
                if (num2 != 0) {
                    result = num1 / num2;
                } else {
                    System.out.println(\"Cannot divide by zero!\");
                    return;
                }
                break;
            default:
                System.out.println(\"Invalid operation.\");
                return;
        }

        System.out.println(\"The result is: \" + result);
        scanner.close();
    }
}
"
create_java_program "SimpleCalculator.java" "$simple_calculator_program"

# 4. Factorial Program
factorial_program="
import java.util.Scanner;

public class Factorial {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print(\"Enter a number: \");
        int num = scanner.nextInt();
        int factorial = 1;
        
        for (int i = 1; i <= num; i++) {
            factorial *= i;
        }

        System.out.println(\"The factorial of \" + num + \" is: \" + factorial);
        scanner.close();
    }
}
"
create_java_program "Factorial.java" "$factorial_program"

# 5. Fibonacci Series Program
fibonacci_program="
import java.util.Scanner;

public class Fibonacci {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print(\"Enter the number of terms: \");
        int terms = scanner.nextInt();
        
        int first = 0, second = 1;
        System.out.print(\"Fibonacci Series: \" + first + \" \" + second);

        for (int i = 3; i <= terms; i++) {
            int next = first + second;
            System.out.print(\" \" + next);
            first = second;
            second = next;
        }
        System.out.println();
        scanner.close();
    }
}
"
create_java_program "Fibonacci.java" "$fibonacci_program"

# 6. Prime Number Checker Program
prime_number_program="
import java.util.Scanner;

public class PrimeNumberChecker {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print(\"Enter a number: \");
        int num = scanner.nextInt();
        boolean isPrime = true;

        for (int i = 2; i <= num / 2; i++) {
            if (num % i == 0) {
                isPrime = false;
                break;
            }
        }

        if (isPrime && num > 1) {
            System.out.println(num + \" is a prime number.\");
        } else {
            System.out.println(num + \" is not a prime number.\");
        }
        scanner.close();
    }
}
"
create_java_program "PrimeNumberChecker.java" "$prime_number_program"

# 7. Reverse a Number Program
reverse_number_program="
import java.util.Scanner;

public class ReverseNumber {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print(\"Enter a number: \");
        int num = scanner.nextInt();
        int reversed = 0;

        while (num != 0) {
            reversed = reversed * 10 + num % 10;
            num /= 10;
        }

        System.out.println(\"Reversed number: \" + reversed);
        scanner.close();
    }
}
"
create_java_program "ReverseNumber.java" "$reverse_number_program"

# 8. Palindrome Checker Program
palindrome_program="
import java.util.Scanner;

public class PalindromeChecker {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print(\"Enter a string: \");
        String str = scanner.nextLine();
        String reversed = new StringBuilder(str).reverse().toString();
        
        if (str.equals(reversed)) {
            System.out.println(str + \" is a palindrome.\");
        } else {
            System.out.println(str + \" is not a palindrome.\");
        }
        scanner.close();
    }
}
"
create_java_program "PalindromeChecker.java" "$palindrome_program"

# 9. Leap Year Checker Program
leap_year_program="
import java.util.Scanner;

public class LeapYearChecker {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print(\"Enter a year: \");
        int year = scanner.nextInt();

        if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
            System.out.println(year + \" is a leap year.\");
        } else {
            System.out.println(year + \" is not a leap year.\");
        }
        scanner.close();
    }
}
"
create_java_program "LeapYearChecker.java" "$leap_year_program"

# 10. Odd or Even Program
odd_or_even_program="
import java.util.Scanner;

public class OddOrEven {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print(\"Enter a number: \");
        int num = scanner.nextInt();
        
        if (num % 2 == 0) {
            System.out.println(num + \" is an even number.\");
        } else {
            System.out.println(num + \" is an odd number.\");
        }
        scanner.close();
    }
}
"
create_java_program "OddOrEven.java" "$odd_or_even_program"

echo "All Java beginner programs have been created successfully in the $base_dir folder!"

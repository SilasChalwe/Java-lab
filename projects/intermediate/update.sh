#!/bin/bash

# Define the root path for the Java project structure
ROOT_DIR=~/Java-programming/projects/intermediate

# Create necessary directories for exception handling and multi-dimensional arrays
mkdir -p $ROOT_DIR/exception-handling/checked-exception $ROOT_DIR/exception-handling/unchecked-exception $ROOT_DIR/arrays/multi-dimensional-array

# Function to create a file with content
create_java_file() {
    FOLDER=$1
    FILE_NAME=$2
    CONTENT=$3

    # Create file and add content
    echo "$CONTENT" > "$FOLDER/$FILE_NAME"
}

# Checked Exceptions Folder (StudentCheckedException.java)
create_java_file "$ROOT_DIR/exception-handling/checked-exception" "StudentCheckedException.java" '
// Student class demonstrating checked exceptions (IOException)

import java.io.*;

public class StudentCheckedException {
    private String name;
    private int age;

    public StudentCheckedException(String name, int age) {
        this.name = name;
        this.age = age;
    }

    public void displayInfo() {
        System.out.println("Name: " + name + ", Age: " + age);
    }

    public static void main(String[] args) {
        // Handling checked exception: FileNotFoundException
        try {
            BufferedReader reader = new BufferedReader(new FileReader("students.txt"));
            String line = reader.readLine();
            System.out.println(line);
            reader.close();
        } catch (IOException e) {
            System.out.println("Checked Exception: " + e.getMessage());
        }
    }
}'

# Unchecked Exceptions Folder (ATMUncheckedException.java)
create_java_file "$ROOT_DIR/exception-handling/unchecked-exception" "ATMUncheckedException.java" '
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
}'

# Multi-dimensional Array Folder (FileHandlerMultiDimensionalArray.java)
create_java_file "$ROOT_DIR/arrays/multi-dimensional-array" "FileHandlerMultiDimensionalArray.java" '
// FileHandler class demonstrating multi-dimensional arrays

public class FileHandlerMultiDimensionalArray {
    public static void main(String[] args) {
        // Multi-dimensional array to simulate file operations
        String[][] fileOperations = {
            {"read", "input.txt"},
            {"write", "output.txt"}
        };

        // Loop through the 2D array and print each operation
        for (int i = 0; i < fileOperations.length; i++) {
            System.out.println("Operation: " + fileOperations[i][0] + " on file " + fileOperations[i][1]);
        }
    }
}'

# Bank Account System with Multi-dimensional Array
create_java_file "$ROOT_DIR/arrays/multi-dimensional-array" "BankAccountMultiDimensionalArray.java" '
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
}'

# Output success message
echo "Intermediate Java files have been created in respective folders: exception-handling, multi-dimensional-array!"

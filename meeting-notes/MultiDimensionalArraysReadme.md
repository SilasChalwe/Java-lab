

---

# Multi-Dimensional Arrays - Overview

## Introduction
In today’s class, we explored the concept of **Multi-Dimensional Arrays**. A multi-dimensional array is essentially an array of arrays, where each element of the main array is another array. These structures allow us to organize data in multiple dimensions, such as rows and columns, or even higher dimensions, which is useful for representing matrices, tables, grids, and more complex data structures.

## What is a Multi-Dimensional Array?
A multi-dimensional array extends the concept of a one-dimensional array by allowing for more than one index to access an element. For instance, a two-dimensional array can be seen as a table with rows and columns, while a three-dimensional array can be visualized as a cube of data.

## Key Concepts
1. **Declaration:** Specifying the type of the array and its dimensions.
2. **Initialization:** Assigning initial values or setting the size for the array.
3. **Instantiation:** Allocating memory for the array using the `new` keyword (in languages like Java).

## Examples by Dimension

### 1-Dimensional Array
A simple list of elements.

```java
// Declaration, instantiation, and initialization
int[] oneDArray = {1, 2, 3, 4, 5};
```

### 2-Dimensional Array
An array of arrays (often visualized as a table or matrix).

```java
// Declaration, instantiation, and initialization of a 2x3 matrix
int[][] twoDArray = {
    {1, 2, 3},
    {4, 5, 6}
};
```

### 3-Dimensional Array
A 3D array can be thought of as an array of 2D arrays (like a cube of data).

```java
// Declaration, instantiation, and initialization of a 2x2x2 cube
int[][][] threeDArray = {
    {
        {1, 2},
        {3, 4}
    },
    {
        {5, 6},
        {7, 8}
    }
};
```

### 4-Dimensional Array
A four-dimensional array is an array of 3D arrays.

```java
// Declaration, instantiation, and initialization
int[][][][] fourDArray = new int[2][2][2][2];

// Optionally, initialization with explicit values:
int[][][][] fourDArrayInit = {
    {
        {
            {1, 2},
            {3, 4}
        },
        {
            {5, 6},
            {7, 8}
        }
    },
    {
        {
            {9, 10},
            {11, 12}
        },
        {
            {13, 14},
            {15, 16}
        }
    }
};
```

### 5-Dimensional Array
A five-dimensional array extends this concept even further.

```java
// Declaration, instantiation, and initialization of a 5D array
int[][][][][] fiveDArray = new int[2][2][2][2][2];

// Example: initialization can also be done with nested initializers, though it becomes more complex
int[][][][][] fiveDArrayInit = {
    {
        {
            {
                {1, 2},
                {3, 4}
            },
            {
                {5, 6},
                {7, 8}
            }
        },
        {
            {
                {9, 10},
                {11, 12}
            },
            {
                {13, 14},
                {15, 16}
            }
        }
    },
    {
        {
            {
                {17, 18},
                {19, 20}
            },
            {
                {21, 22},
                {23, 24}
            }
        },
        {
            {
                {25, 26},
                {27, 28}
            },
            {
                {29, 30},
                {31, 32}
            }
        }
    }
};
```

## Working with Multi-Dimensional Arrays

### Using a Scanner (Input from User)
You can use a `Scanner` to populate a multi-dimensional array with user input. For example, a 2D array:

```java
import java.util.Scanner;

public class MultiDimArrayExample {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int[][] matrix = new int[2][2];  // 2x2 matrix
        
        // Input values from the user
        for (int i = 0; i < matrix.length; i++) {
            for (int j = 0; j < matrix[i].length; j++) {
                System.out.print("Enter value for matrix[" + i + "][" + j + "]: ");
                matrix[i][j] = scanner.nextInt();
            }
        }
        
        // Output the matrix
        System.out.println("Your 2D array:");
        for (int i = 0; i < matrix.length; i++) {
            for (int j = 0; j < matrix[i].length; j++) {
                System.out.print(matrix[i][j] + " ");
            }
            System.out.println();
        }
    }
}
```

### Iterating Using For Loop
Using nested **for loops** is common for accessing elements in multi-dimensional arrays.

```java
int[][] matrix = {{1, 2}, {3, 4}};
for (int i = 0; i < matrix.length; i++) {
    for (int j = 0; j < matrix[i].length; j++) {
        System.out.print(matrix[i][j] + " ");
    }
    System.out.println();
}
```

### Iterating Using For-Each Loop
The **for-each loop** provides a simpler syntax for iterating over arrays when the index is not needed.

```java
int[][] matrix = {{1, 2}, {3, 4}};
for (int[] row : matrix) {
    for (int element : row) {
        System.out.print(element + " ");
    }
    System.out.println();
}
```

## Summary
In this lesson, we covered:
- **Definition:** Multi-dimensional arrays are collections of arrays, enabling us to represent data in multiple dimensions.
- **Declaration, Initialization, and Instantiation:** How to declare, allocate, and initialize arrays.
- **Examples:** Demonstrations from 2 dimensional arrays.

- **Iteration:** Techniques to work with these arrays using standard for loops, for-each loops, and Scanner for user input.
---

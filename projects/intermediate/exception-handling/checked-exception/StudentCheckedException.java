
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
}


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
}

import java.util.Scanner;

public class TicTacToe {
    private static char[][] board;
    private static char currentPlayer;
    private static Scanner scanner = new Scanner(System.in);

    public static void main(String[] args) {
        boolean playAgain = true;
        
        while (playAgain) {
            initializeBoard();
            boolean gameWon = false;
            int moves = 0;

            while (!gameWon && moves < 9) {
                printBoard();
                System.out.println("Player " + currentPlayer + ", enter row (0-2) and column (0-2): ");
                int row = scanner.nextInt();
                int col = scanner.nextInt();

                if (isValidMove(row, col)) {
                    board[row][col] = currentPlayer;
                    moves++;
                    if (checkWin(row, col)) {
                        printBoard();
                        System.out.println("Player " + currentPlayer + " wins!");
                        gameWon = true;
                    } else if (moves == 9) {
                        printBoard();
                        System.out.println("It's a draw!");
                    } else {
                        currentPlayer = (currentPlayer == 'X') ? 'O' : 'X';
                    }
                } else {
                    System.out.println("Invalid move, try again.");
                }
            }
            
            playAgain = promptRestart();
        }
        System.out.println("Cheers for playing!");
        scanner.close();
    }

    private static void initializeBoard() {
        board = new char[][]{
            {' ', ' ', ' '},
            {' ', ' ', ' '},
            {' ', ' ', ' '}
        };
        currentPlayer = 'X';
    }

    private static void printBoard() {
        System.out.println("\n  0 1 2");
        for (int i = 0; i < 3; i++) {
            System.out.print(i + " ");
            for (int j = 0; j < 3; j++) {
                System.out.print(board[i][j]);
                if (j < 2) System.out.print("|");
            }
            System.out.println();
            if (i < 2) System.out.println("  -----");
        }
    }

    private static boolean isValidMove(int row, int col) {
        return row >= 0 && row < 3 && col >= 0 && col < 3 && board[row][col] == ' ';
    }

    private static boolean checkWin(int row, int col) {
        return (board[row][0] == currentPlayer && board[row][1] == currentPlayer && board[row][2] == currentPlayer) ||
               (board[0][col] == currentPlayer && board[1][col] == currentPlayer && board[2][col] == currentPlayer) ||
               (board[0][0] == currentPlayer && board[1][1] == currentPlayer && board[2][2] == currentPlayer) ||
               (board[0][2] == currentPlayer && board[1][1] == currentPlayer && board[2][0] == currentPlayer);
    }

    private static boolean promptRestart() {
        System.out.println("Do you want to play again? (yes/no)");
        String response = scanner.next().toLowerCase();
        return response.equals("yes");
    }
}

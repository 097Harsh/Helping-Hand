/*
 * Write a java program to print value of 
    x^n. 
    Input: x=5 
    Input: n=3
    Output: 125 in java
 */

import java.util.Scanner;
import java.util.Scanner;

public class q4 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter the value of x: ");
        int x = scanner.nextInt();

        System.out.print("Enter the value of n: ");
        int n = scanner.nextInt();

        int result = calculatePower(x, n);
        System.out.println("Result: " + result);

        scanner.close();
    }

    // Method to calculate the power of x raised to the power of n
    public static int calculatePower(int x, int n) {
        int result = 1;

        for (int i = 0; i < n; i++) {
            result *= x;
        }

        return result;
    }
}

/*Write a program to pass Starting and Ending limit and print all prime numbers and 
Fibonacci
numbers between this range. 
*/
import java.util.Scanner;

public class q2 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter the starting limit: ");
        int start = scanner.nextInt();

        System.out.print("Enter the ending limit: ");
        int end = scanner.nextInt();

        System.out.println("Prime numbers within the range:");
        printPrimeNumbers(start, end);

        System.out.println("\nFibonacci numbers within the range:");
        printFibonacciNumbers(start, end);
    }

    // Method to check if a number is prime
    public static boolean isPrime(int number) {
        if (number <= 1) {
            return false;
        }

        for (int i = 2; i <= Math.sqrt(number); i++) {
            if (number % i == 0) {
                return false;
            }
        }

        return true;
    }

    // Method to print all prime numbers within the range
    public static void printPrimeNumbers(int start, int end) {
        for (int i = start; i <= end; i++) {
            if (isPrime(i)) {
                System.out.print(i + " ");
            }
        }
    }

    // Method to print Fibonacci numbers within the range
    public static void printFibonacciNumbers(int start, int end) {
        int first = 0;
        int second = 1;
        int next = first + second;

        while (next <= end) {
            if (next >= start) {
                System.out.print(next + " ");
            }

            first = second;
            second = next;
            next = first + second;
        }
    }
}

/*
 * import java.util.Scanner;

public class PrimeFibonacci {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter starting number: ");
        int start = sc.nextInt();
        System.out.println("Enter ending number: ");
        int end = sc.nextInt();

        // Print all prime numbers between start and end
        for (int i = start; i <= end; i++) {
            if (isPrime(i)) {
                System.out.println(i);
            }
        }

        // Print all Fibonacci numbers between start and end
        for (int i = start; i <= end; i++) {
            if (isFibonacci(i)) {
                System.out.println(i);
            }
        }
    }

    private static boolean isPrime(int n) {
        if (n <= 1) {
            return false;
        }

        for (int i = 2; i <= Math.sqrt(n); i++) {
            if (n % i == 0) {
                return false;
            }
        }

        return true;
    }

    private static boolean isFibonacci(int n) {
        return (n == 0 || n == 1 || n == 2 || n == 3) || (n == (fibonacci(n - 1) + fibonacci(n - 2)));
    }

    private static int fibonacci(int n) {
        if (n <= 1) {
            return n;
        }

        return fibonacci(n - 1) + fibonacci(n - 2);
    }
}
 */

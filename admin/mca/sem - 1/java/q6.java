/*
 * Write a program in Java to find minimum of three numbers using conditional operator
 */

import java.util.Scanner;

public class q6 {
    public static void main(String args[])
    {
        Scanner scanner = new Scanner(System.in);
        int n1,n2,n3,minimum;

        System.out.println("Enter the value of n1:");
        n1 = scanner.nextInt();

        System.out.println("Enter the value of  n2:");
        n2 = scanner.nextInt();
        
        System.out.println("Enter the value of n3:");
        n3 = scanner.nextInt();

        minimum = (n1 < n2)?((n1 < n3)?n1 : n3):((n2 < n3)?n2:n3);

        System.out.println("The minimum number is:"+minimum);

        
    }
}

/*
 * Write a java program which should display maximum number of given 4 numbers
 */

import java.util.Scanner;

public class q7 {
    public static void main(String args[])
    {
        Scanner scanner = new Scanner(System.in);
        int n1,n2,n3,n4,maximum;

        System.out.println("Enter the value of n1:");
        n1 = scanner.nextInt();

        System.out.println("Enter the value of n2:");
        n2 = scanner.nextInt();

        System.out.println("Enter the value of n3");
        n3 = scanner.nextInt();

        System.out.println("Enter the value of n4:");
        n4 = scanner.nextInt();

        maximum = Math.max(Math.max(n1, n2), Math.max(n3, n4));
        System.out.println("The maximum numuber is:"+maximum);
        
    }
}

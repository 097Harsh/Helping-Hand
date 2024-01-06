/*
 * Write a java program to create a class “Matrix” that would contain integer values having 
    varied
    Numbers of columns for each row. Print row-wise sum of the integer values for each 
    row.
 */


import java.util.Scanner;
class q9{

     public static void main(String[] args) {
        
        int a[][] = new int[2][2];
        int b[][] = new int[2][2];
        int c[][] = new int[2][2];

        Scanner r = new Scanner(System.in);
        System.out.print("Enter first matrix:");
        for(int i=0;i<2;i++)
        {
            for(int j=0;j<2;j++)
            {
                a[i][j] = r.nextInt();
            }
        }
        System.out.print("Enter Second matrix:");
        for(int i=0;i<2;i++)
        {
            for(int j=0;j<2;j++)
            {
                b[i][j] = r.nextInt();
            }
        }
        System.out.print("Your first matrix:\n");
        for(int i=0;i<2;i++)
        {
            for(int j=0;j<2;j++)
            {
                System.out.print(a[i][j]+"");
            }
            System.out.print("\n");
        }
        System.out.print("Your second matrix:\n");
        for(int i=0;i<2;i++)
        {
            for(int j=0;j<2;j++)
            {
                System.out.print(b[i][j]+"");
            }
            System.out.print("\n");
        }
        System.out.print("Sum of two matrix:\n");
        for(int i=0;i<2;i++)
        {
            for(int j=0;j<2;j++)
            {
               c[i][j] = a[i][j] + b[i][j];
               System.out.print(c[i][j]+"");
            }
            System.out.print("\n");
        }
    }
}
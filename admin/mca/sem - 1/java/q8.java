/*
 *  Write a program in Java to multiply two matrix.
    Declare a class Matrix where 2D array is declared as instance variable and array should 
    be initialized, within class. 
 */
import java.util.Scanner;
class q8{
    public static void main(String args[])
    {
        int a[][] = new int[2][2];
        Scanner r = new Scanner(System.in);
        System.out.println("Enter array element:");
        for(int i=0;i<2;i++)
        {
            for(int j=0;j<2;j++)
            {
                a[i][j] = r.nextInt();
            }
        }
        System.out.println("Matrix:\n");
        for(int i=0;i<2;i++)
        {
            for(int j=0;j<2;j++)
            {
                System.out.print(a[i][j]+"");
            }
            System.out.print("\n");
        }
    }
}
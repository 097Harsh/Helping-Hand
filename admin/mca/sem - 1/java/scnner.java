//this basic scanner class program

import java.util.Scanner;

class scnner {
    
    public static void main(String args[])
    {
        Scanner scanner = new Scanner(System.in);

        int a,b;
        

        System.out.println("Enter the number :");
        a = scanner.nextInt();
        b = scanner.nextInt();
        int c  = a + b;
        System.out.println("The sum of two number is:"+c);


    }
    
}

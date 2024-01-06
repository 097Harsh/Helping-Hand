/* Write programme in java to find the number is pelindrome or not... */

import java.util.Scanner;

class q3 {
    public static void main(String args[]){
        int n,s=0,c,rem;
        System.out.println("Enter the number:");
        Scanner ref = new Scanner(System.in);
        n = ref.nextInt();
        c=n;

        while(n>0){
            rem = n % 10;
            s = (s * 10)+rem;
            n = n /10;
        }
        if(c == s){
            System.out.println("The number is pelindrome number");
        }
        else{
            System.out.println("The number is not pelindrome");
        }
    }
}

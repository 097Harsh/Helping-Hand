/*
    * Write a java program to check 
    Armstrong number. Input: 153 Output: 
    Armstrong number
    Input: 22 Output: not Armstrong number
 */

import java.util.Scanner;

public class q5 {

    
    public static void main(String args[]) 
    {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter the number:");
        int num = scanner.nextInt();

        if(isArmstrongNumber(num)){
            System.out.println(num+"is armstrong number");
        }
        else{
            System.out.println(num+"is not armstrong number");
        }
    } 
    public static boolean isArmstrongNumber(int num){
        int originalnum = num;
        int result = 0;
        int digits = String.valueOf(num).length();
        
        while(num != 0){
            int digit = num % 10;
            result += Math.pow(digit, digits);
            num /= 10;

        }
        return originalnum == result;
    } 
}

import java.math.BigInteger;
import java.util.Scanner;

public class veryEasy {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        while (input.hasNext()) {
            int n = input.nextInt();
            int a = input.nextInt();
            BigInteger A = BigInteger.valueOf(a);
            BigInteger sum = BigInteger.ZERO;
            for (int i = 1; i <= n; i++) {
                sum = sum.add(BigInteger.valueOf(i).multiply(A.pow(i)));
            }
            System.out.println(sum);
        }
    }   
}

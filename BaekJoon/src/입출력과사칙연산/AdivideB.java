package 입출력과사칙연산;
import java.io.IOException;

public class AdivideB {
	public static void main(String[] args) throws IOException{		
		int a = System.in.read();
		System.in.read();
		int b = System.in.read();
		System.in.read();
		a=a-48;
		b=b-48;
		System.out.printf("%.9f", a/(double)b);
	}
}

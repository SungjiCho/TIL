package 입출력과사칙연산;
import java.io.IOException;

public class AminusB {
	public static void main(String[] args) throws IOException{
		int a = System.in.read();
		System.in.read();
		int b = System.in.read();
		System.in.read();
		a=a-48;
		b=b-48;
		System.out.println(a-b);
	}
}

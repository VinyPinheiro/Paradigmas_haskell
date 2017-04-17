import java.util.Scanner;

public class Max1DRangeSum{
	public static void main(String[] args) {
	    int sum = 0, ans = 0;
	    String line;

	    Scanner scan = new Scanner(System.in);


	    System.out.println("Aguarde... O sistema está encontrando o valor da maior sequência.");
	    while(scan.hasNext()){
	    	line = scan.next();
	        if (line.equals("end"))
	            break;

	    	int number = Integer.parseInt(line);

	        sum += number;           
	        ans = max(ans, sum);            
	        if(sum < 0)  sum = 0;           
	    }                                  

	    System.out.println("A soma eh: " + ans);
	    System.out.println("\nObrigado por utilizar!");

	}

	public static int max(int x, int y){
		return (x < y) ? y : x;
	}
}
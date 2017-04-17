import java.util.Scanner;
import java.util.Vector;

public class Max1DRange{
	public static void main(String[] args) {
	    int sum = 0, ans = 0;
	    String line;
    	int start = 0, end = 0, s = 0;
    	Vector<Integer> range = new Vector<Integer>();

	    Scanner scan = new Scanner(System.in);


	    System.out.println("Aguarde... O sistema está encontrando a sequência com maior soma.");
	    for(int i = 0; scan.hasNext(); i++){
	    	line = scan.next();
	        if (line.equals("end"))
	            break;

	    	int number = Integer.parseInt(line);

	        sum += number;
	        range.addElement(number);        

	        if (ans < sum)
	        {
	            ans = sum;
	            start = s;
	            end = i;
	        }
	 
	        if (sum < 0)
	        {
	            sum = 0;
	            s = i+1;
	        }       
	    }

		System.out.print("[" + range.get(start));
	    for (int i = start + 1; i <= end; ++i)
	    {
	    	System.out.print("," + range.get(i));
	    }

	    System.out.println("]");
	    System.out.println("\nObrigado por utilizar!");

	}
}
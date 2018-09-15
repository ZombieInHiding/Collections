package lti.hero;

import java.util.ArrayList;

public class CalculateScore {
	
	// Sequence: SP-SM-IM-BM-BP-DP-HK
	private static int[] result = new int[7];
	public static void main(String[] args) {
		ArrayList<String> score = new ArrayList<>();
		score.add("1011000");
		score.add("0000100");
		score.add("1010100");
		score.add("0000100");
		score.add("0000000");
		score.add("0011100");
		score.add("0001110");
		score.add("0101011");
		score.add("1000001");
		score.add("1111100");
		score.add("1100001");
		score.add("1000101");
		
		for (String value : score) {
			addstring(value);
		}
		for (int i : result) {
			System.out.print(i);
		}
		int m=0;
		int max = result[0]; 
	    for(int i=1;i < result.length;i++){ 
	      if(result[i] > max){ 
	         max = result[i]; 
	         m = i;
	      } 
	    } 
	    System.out.println();System.out.println(m);
 
	}
	private static void addstring(String input) {
		String star[] = input.split("");
		for (int i = 0; i < star.length; i++) {
			result[i] += Integer.parseInt(star[i]);
		}
	}
}

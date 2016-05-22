package helloworld;
import x10.util.Random;

public class Async_test {
	static val n:Long = 100;
	public static def main(args:Rail[String]) {
		
		async { // Compute oddSum in child activity
			var oddSum:Double = 0;
			for (var i:Long = 1 ; i <= n ; i += 2 ) oddSum += i;
			Console.OUT.println("oddSum = " + oddSum);
		}
		// Compute evenSum in parent activity
		var evenSum:Double = 0;
		for (var j:Long = 2 ; j <= n ; j += 2 ) evenSum += j;
		Console.OUT.println("evenSum = " + evenSum);
	} // main()
	
	// Both child and parent activities run in parallel 
}
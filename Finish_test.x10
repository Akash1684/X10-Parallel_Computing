package helloworld;


public class Finish_test {
    public static def main(args: Rail[String]) {
    
    		val n:Long = 100;
    		var oddSum:Double = 0;
    	    var evenSum:Double = 0;
    		finish {
    			async { // Compute oddSum in child activity
    				for (var i:Long = 1 ; i <= n ; i += 2 )
    					oddSum += i;
    			}
    			
    			// Compute evenSum in parent activity
    			for (var j:Long = 2 ; j <= n ; j += 2 ) evenSum += j;
    		} // finish
    		
    		//print statement will not execute untill finish block executes
    		
    		Console.OUT.println("Sum = " + (oddSum + evenSum));
    	
    }
}
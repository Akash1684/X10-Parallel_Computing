package helloworld;

public class Atomic_test {
    public static def main(args: Rail[String]) {
        
    	async {
    		
    		atomic { // atomic
    		for(var i:Long=1;i<1000;i++)
    			Console.OUT.println("T : 1");
    		}
    	}
    	
    	async {
    		
    		atomic { //atomic
    		for(var j:Long=1;j<1000;j++)
    			Console.OUT.println("T : 2");
    	 }
    	}
    	
    	/* Once control goes to the atomic section, it will print everything then move 
    	 * to next statement*/    	
    	
    }
}
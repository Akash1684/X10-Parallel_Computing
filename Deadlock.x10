package helloworld;
import x10.util.concurrent.Lock;

public class deadlock {
	
	
	public static def main(args: Rail[String]) {
		
		
		val lock1 = GlobalRef[Lock](new Lock());
		val lock2 = GlobalRef[Lock](new Lock());
		val lock3 = GlobalRef[Lock](new Lock());
		var i:Long;
		var t:Long=2;
		
		
			async{
				
				lock1().lock();
				Console.OUT.print("T : "+1+ " LOCK 1\n");
				
				
				lock2().lock();
				Console.OUT.print("T : "+1+ " LOCK 2\n");
				lock2().unlock();
				
				lock1().unlock();
				
			}
			
			async{
				
				lock2().lock();
				Console.OUT.print("T : "+2+ " LOCK 2\n");
				
				
				lock1().lock();
				Console.OUT.print("T : "+2+ " LOCK 1\n");
				lock1().unlock();
				
				lock2().unlock();
				
			}
		
		
		}
		
		
	}
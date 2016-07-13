# X10-Parallel_Computing
X10 is the PGAS (Partitioned Global Address Space) languages. It is a modern objectoriented programming language that introduces new 
constructs that significantly simplify scale out programming. The fundamental goal of X10 is to enable scalable, highperformance, high-
productivity transformational programming for high-end computers for traditional numerical computation workloads (such as weather 
simulation, moleculardynamics, particle transport problems etc) as well as commercial server workloads,such as big data analytics.

* [Hello.x10](https://github.com/Akash1684/X10-Parallel_Computing/blob/master/Hello.x10) : Printing "hello" from every place present in the CPU.
* [Async_test.x10](https://github.com/Akash1684/X10-Parallel_Computing/blob/master/Async_test.x10) : Spawning an asynchronous activity is done using async construct, the new activity is considered as child activity of its parent.
* [Atomic_test.x10](https://github.com/Akash1684/X10-Parallel_Computing/blob/master/Atomic_test.x10) : Coordination of the accesses by multiple activities of shared data is done using X10’s atomic blocks. Statements in an atomic block executes as if in a single step, during which s executes and terminates locally while all other concurrent activities in the same place are suspended.
* [Finish_test.x10](https://github.com/Akash1684/X10-Parallel_Computing/blob/master/Finish_test.x10) : Termination of activities are handled using finish construct. The statement finish s converts global termination to local termination. Local termination means that the activity has executed all its statement whereas Global termination of an activity means that all its statements are executed and all its child activities (if any) are terminated locally.

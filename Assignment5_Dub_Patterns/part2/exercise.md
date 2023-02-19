What are the pros of your design pattern?

+ Helps achieve reusability and flexibility.
+ Client class is not complicated by having to use a different interface
+ Client class can use polymorphism to swap between different implementations of adapters
+ Can work very quickly 

What are the cons of your design pattern?

- It may introduce complexity in the code
- All requests are forwarded, so there is a slight increase in the overhead.
- Sometimes many adaptations are required along an adapter chain to reach the type which is required.
- Adapter cannot be used with subclasses of Adaptee or Target .

(Optional) Did you utilize any interesting D idioms for this portion of the assignment?

*optional todo*

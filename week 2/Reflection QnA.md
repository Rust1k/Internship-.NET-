
## Questions

1. What is type reflection?
2. How to get object of class Type for some type?
3. How to create an object of some type using reflection?
4. What are the benefits of reflection when accessing fields?
5. What is serialization?
6. Why do we need reflection during serialization?
7. What is an attribute? 

## Answers

1. Technology for accessing the object model of a program's source code while the program is running
2. 
```C#
typeof(T)
new T().GetType()
```
3. Get Type, then get ConstructorInfo from it for the constructor with the necessary parameters, call the method from ConstructorInfo
4. Allows you to get and change private fields
5. Converting objects to some binary form
6. To generate serialization code on the fly for objects of previously unknown types
7. Objects that can be added to data type members and data types that carry some meta-information. As a result, this information is available through reflection.
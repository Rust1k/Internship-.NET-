Suppose you have some Reader class, where unmanaged resources are used: 
 
```C#
public class Customer : IDisposable 
{ 
    private StringReader _reader; 

    public Customer() 
    { 
        this._reader = new StringReader(); 
    } 

} 
```
 
For this class implement Finalize and Dispose methods in C#. 
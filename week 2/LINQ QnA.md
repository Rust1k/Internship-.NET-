
## Questions

1. What will be the value of sum?
```C#
var sum = 0;
var ys = new[] {1, 2, 3, 4};
ys.Select(y => sum += y);
Console.WriteLine(sum); 
```

2. In what order will the method bodies be executed?
```C#
result.Where1.Select2.ToList3.Where4.Select5 
```

3. Rewrite without using a loop. You will need the Where, Select, ToList methods. 
```C#
var list = new List<int>()
foreach(var x in G()) {
    var a = x + F(x);
    if(a % 2 == 0)
        list.Add(a);
}
```

4. What is method chaining?
5. How to sort by two parameters? For example, first by last name, and then by first name.
6. How to get a collection without repeated objects using LINQ?
7. List the aggregation functions in LINQ.
8. What is Lookup?
9. What does this code do? What is it complexity? How to make it more efficient?
```C#
a.SelectMany(x=>a.Where(y => y == x).Skip(1)).Min(); 
```
10. What's wrong with the code? How to fix? How can Count and ElementAt be implemented without sacrificing performance? 
```C#
IEnumerable<T> x = ...
for(int i=0; i<x.Count(); i++)
    Console.WriteLine(x.ElementAt(i));
```

## Answers

1. 0
2. List3, Select2, Where1. Then Select5, Where4, if required.
3. 
```C#
    list.AddRange(G().Select(x => x + F(x))
                    .Where(a => a % 2 == 0)
                    .ToList()
                );
```
Or
```C#
    G().Select(x => x + F(x))
        .Where(a => a % 2 == 0)
        .ToList()
        .ForEach(x=>list.Add(x));
```

4. An approach where the method returns an object on which the next method can be called. Sequential calling of such methods forms a chain. 

5. OrderBy, ThenBy

6. Distinct

7. Max, Min, Average, Sum, ...

8. A Lookup<TKey, TElement> resembles a Dictionary<TKey, TValue>. The difference is that a Dictionary<TKey, TValue> maps keys to single values, whereas a Lookup<TKey, TElement> maps keys to collections of values.

9. Finds the minimum value that is contained in a in 2 or more instances.  
Θ(n²)  
```C#
a.GroupBy(x=>x).Where(g => g.Count() != 1).Min(g => g.Key);   
```
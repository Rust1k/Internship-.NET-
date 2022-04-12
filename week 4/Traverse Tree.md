Improve Traverse a Binary Tree with Parallel Tasks for better performance. 

```C#
    public class Tree<T> 
    { 
        public Tree<T> Left; 
        public Tree<T> Right; 
        public T Data; 
    } 
```
  
```C#
    public static void DoTree<T>(Tree<T> tree, Action<T> action) 
    { 
        if (tree == null) return; 
        DoTree(tree.Left, action);
        DoTree(tree.Right, action);
        action(tree.Data); 
     }     
```
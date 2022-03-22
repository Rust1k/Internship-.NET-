In this exercise you should create class for a simple text editor that should have methods 
1. MoveCursorTo(int row, int col)
2. InsertChar(char c)
3. DeleteChar()
<br> 

In addition, you should add two more operations Undo and Redo. The user should not be able to perform operations again (Redo) if he did some new operations after canceling them.
You should use Stack data structure. 
For this task the [command pattern](https://refactoring.guru/design-patterns/command) is suitable. You can use it if you can.

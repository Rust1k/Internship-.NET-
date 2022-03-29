If the documentation is kept separate from the code, it very easily and quickly becomes obsolete and irrelevant. One way to keep documentation up to date is to write it as close to the code as possible. Sometimes attributes are used for this, information is extracted from them and collected using reflection. This is the technique you have to apply in this task.

Download [Documentation project](Documentation.csproj.zip).

In the Specifier file implement methods that return a structured description of the methods of the class, focusing on the attributes with which this class is marked.

Start by looking at the VkApi class on which your Specifier will be tested. This is just an example of a class that we want to document, so none of the methods are implemented there (and there is no need to implement them).

Examine the Specifier_should test. It specifies the requirements for the behavior of your ISpecifier implementation.
### Data description
In this task it is required to process several sequences from the following set:
```
A: information about consumers, containing fields "Consumer code", "Year of birth", "Address";
B: information about goods containing fields "Article number", "Category", "Country of origin";
C: discounts for consumers in various stores, containing fields "Consumer code", "Store name", "Discount" (in percent);
D: prices of goods in various stores containing fields "Article number", "Store name", "Price";
E: information about purchases of consumers in various stores, containing the fields "Consumer code", "Article number" (of the product), "Store name".
```
The order of the fields for the elements of each sequence is determined in the task statement.  
- In sequence A, all elements have different values ​​for the "Consumer Code" field.   
- In sequence B all items have different values ​​for the "Article number" field.  
- In sequence C, all elements have different combinations of the "Consumer Code" and "Store Name" fields.  
- In sequence D, all items have different combinations of the "Article number" and "Store Name" fields.   
- The sequence E can contain the same elements (this corresponds to situation in which the same consumer purchased several identical goods in the same store).

All values ​​of consumer codes and article numbers that are presented in sequences C, D and E are necessarily contained in sequences A and B. Some values ​​of consumer codes and article numbers that are presented in sequences A and B may not be presented in other sequences. Any "store-product" combination presented in sequence E must also be presented in sequence D. A "customer-store" combination presented in sequence E may not be presented in sequence C; this means that when buying the specified product in this store, the consumer did not have a discount (i.e., the discount was 0).
Consumer codes, years of birth, discounts and prices are given as integers; discount values ​​range from 5 to 50. Other fields are strings and do not contain spaces.

Articles of goods have the format "AAddd-dddd", where the positions marked with the symbol "A" contain any capital Latin letter, and the positions marked with the symbol "d" contain some number.

If a consumer purchased a product with a price p at a discount of d percent, then the amount of the discount for this product should be calculated using the formula p*d / 100, where the symbol "/" denotes an integer division operation.


### Task description

In this task you should try to use only one LINQ query (LINQ to Objects).  
````
For each country (product manufactor) and each store, determine the consumer with the highest year of birth who bought one or more goods produced in this country in this store (first, the name of the country, then the name of the store, then the year of birth of the consumer, his code, and also the total cost goods from this country purchased in this store). If there is no information about sold goods for some "country-shop" pair, then data about this pair is not displayed. If for some pair "country-store" there are several consumers with the highest year of birth, then data about all such consumers should be displayed. Information about each triple "country-shop-consumer" should be displayed on a new line and sorted by country names in alphabetical order, for identical country names - by store names (also in alphabetical order), and for identical stores - by increasing consumer codes. 
````
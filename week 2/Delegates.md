Suppose you have two entities in the program: customer (full name, customer type, address) and order (order number, date, amount). Each client can be one of the following types: "new client", "permanent (with large orders)", "permanent (with small orders)". This set of types can be expanded in the future. The size of the discount should be calculated according to client type; each type has its own formula:
- "new" - calculation is carried out without discount
- "permanent (large orders)" - depending on the size of the order:
  - if more than 100000 - 15% discount
  - if less than 100000 - 10% discount
- permanent (small orders) - 5% discount

When adding types, there should be a relatively simple implementation of extending the discount calculation functionality for new types of customers. In this task, you can use lambda expressions to calculate the discount. You can use a dictionary to store the calculation method. As another implementation you can use the [Simple Factory pattern](https://refactoring.guru/design-patterns/factory-comparison), which will return the appropriate delegate for calculating the discount. Also it is possible to combine these two methods.
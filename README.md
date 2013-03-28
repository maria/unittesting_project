# Functional, structural and mutation testing #

## Project Specifications ##

1. Create a software program  

The ```triangle.rb``` file contains an algorithm to create a Triangle instance.  
The class has several methods to verify a triangle type, etc.

2. Generate test data  
Use   
* equivalence partitioning,   
* boundary value analysis,   
* category partitioning methods to generate data.  
This data is kept in ```test_data.rb```


3. Compute program complexity  
Using [McCabe formula](http://en.wikipedia.org/wiki/Cyclomatic_complexity) compute the program complexity.

4. Write Tests

5. Generate mutations
Gem: https://github.com/mbj/mutant  
To generate mutation use the command:  
```mutant -I lib -r test_triangle '::Triangle' --rspec-dm2```

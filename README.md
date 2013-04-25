# Functional, structural and mutation testing #

## Project Specifications ##

#### Create a software program ####

The ```triangle.rb``` file contains an algorithm to create a Triangle instance.  
The class has several methods to verify a triangle type, etc.

#### Generated test data ####
By:
  * equivalence partitioning,
  * boundary value analysis,
  * category partitioning methods to generate data.  
The data is stored in ```data.rb```

#### Compute program complexity ####
Using [McCabe formula](http://en.wikipedia.org/wiki/Cyclomatic_complexity) compute the program complexity.

Formula: ```M = E - N + 2*P```  
As the graph shows:  
E = 11  
N = 9  
P = 3  

```M = 11 - 9 + 2 * 3 = 8```


#### Write Tests ####

#### Generate mutations ####
* $ rvm install rbx-head
* $ rvm use rbx-head
* gem install mutant  

More info about the gem: https://github.com/mbj/mutant  
To generate mutation use the command:  
```mutant -I lib -r test_triangle '::Triangle' --rspec-dm2```

#### Links ####
1. http://www.site.uottawa.ca/~ssome/Cours/SEG3203/bboxtesting.pdf
2. http://blog.txus.io/2012/02/mutation-testing-with-mutant/

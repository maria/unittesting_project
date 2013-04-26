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
As the [graph](https://www.dropbox.com/s/es4461j38iz1r4i/graph.jpg) shows:  
E = 11  
N = 9  
P = 3  

```M = 11 - 9 + 2 * 3 = 8```  

Cyclomatic complexity can also be computed with the formula:  
```π - s + 2```, where π = the number of decision points and s = the number of exit points.  
π = 11  
s = 3  
hence the **cyclomatic complexity** = 11 - 3 + 2 = 10
 

#### Write Tests ####

#### Generate mutations ####
* $ rvm install rbx-head
* $ rvm use rbx-head
* gem install mutant  

More info about the gem: https://github.com/mbj/mutant  

To generate mutation use the command:  
```$ rvm use rbx-head```
```$ mutant -I lib -r test_triangle '::Triangle' --rspec-dm2```

#### Links ####
1. http://www.site.uottawa.ca/~ssome/Cours/SEG3203/bboxtesting.pdf
2. http://blog.txus.io/2012/02/mutation-testing-with-mutant/

1. https://www.appcoda.com/ios-concurrency/  GCD and Operation (Different between GCD and Operation queue)
2. https://www.appcoda.com/grand-central-dispatch/ GCD Swift 3 
3. https://www.raywenderlich.com/5293-operation-and-operationqueue-tutorial-in-swift (operation queue in depth)

5. HashMap internals


Array 

1. Segregate 0s and 1s in an array [First answer is count O and starting to zero and last n-count to 1 ][second approach is start with left and write counter ok ]
[Do following while left < right
a) Keep incrementing index left while there are 0s at it
b) Keep decrementing index right while there are 1s at it
c) If left < right then exchange arr[left] and arr[right]]

1. https://javarevisited.blogspot.com/2015/06/top-20-array-interview-questions-and-answers.html (top 20 array questions question look here and solution take geeks for geeks )

LinkList

1. Print the Middle of a given linked list
2. Delete the elements in an linked list whose sum is equal to zero
3. Delete middle of linked list
4. Remove duplicate elements from sorted linked list
5. Reverse a linked list in groups of given size
6. Detect loop in linked list
7. Floyd Cycle Detection algorithm    
1.  Remove loop in linked list
2. Find nth node from the end of linked list
3. Function to check if a singly linked list is a palindrome
4. Write a function to delete a linked list.


Tree question 

1. Lowest common Ancestor 
2. Calculate height of a binary tree 
3. Tree traversal (in order , pre order, postorder)
4. 
5. Insertion in BST
6. Search given key in BST
7. Deletion from BST
8. Height 
9. Tree Theory 


1. Floyd’s Cycle-Finding Algorithm:


1. Single Responsibility Principle: Model follow signal repository principal 
2. Open/Closed Principle: The Open/Closed Principle (OCP) states that your modules should be open for extension but closed for modification.  Decorator Design pattern is mainly focused on Open/Closed Principle Simple example if previous you use core data in your code but now you want to change and implement to relam So if you can achieve by inheritance protocol 
3. Liskov Substitution Principle: Extended version of open closed principle Example: Take Bird flying property and peg win is bird but can not flying so this approach provide functionality for create to protocol and Merge this protocol in each other and make Protocol flyingBird so all flying bird contain flying bird protocol and other one is Bird , so pegwin is not a flying bird so it contain only bird protocol 
4. The Interface Segregation Principle states that clients should not be forced to implement interfaces they don’t use. Faty called 
5. dependency inversion principle :-  refers to a specific form of decoupling software  modules.

SOLID stands for 

Single Responsibility Principle, 
Open/Closed Principle, 
Liskov Substitution Principle,
Interface Segregation Principle,
Dependency Inversion Principle




1. Kandan’s algorithme 
2. KMP algorithm     
3. Find the Closest Palindrome    
4.  Knapsack Problem    
5. Multiplication of two large integer number
6. Find pair with given sum in the array    
7. Hashmap implementation    
8. LRU Algorithms     
9. Heap    
10. KMP and Rabin karp Algoritm    
11. Diff utility algorithm     
12. Server encoding make small url over large URL     
13. AES Algorithm     
14. RSA Algorithm         
15. Dutch flage     
16. Tree traversal     
17. Floud warshal     
18. Dijkastrtar algorithm     
19. Balman ford     
20. BFS
21. DFS
5866567223


1. Longest Common Subsequence (LCS) 
2. Rabin-Karp String Matching Algorithm. 
3. Knuth-Morris-Pratt KMP String Matching Algorithm 
4. AVL Tree - Insertion and Rotations   https://www.youtube.com/watch?v=jDM6_TnYIqE. 
5. MultiStage Graph (Program) - Dynamic Programming
6.  Graph Traversals - BFS & DFS -Breadth First Search and Depth First Search 
7. QuickSort Algorithm.   
8. Time Complexity of While and if 
9. Merge Sort Algorithm  
10. Masters Theorem in Algorithms for Dividing Function 
11. Divide And Conquer 
12. Frequency Count Method 
13. Stack vs Heap 
14. Greedy Method - Introduction. 
15. Job Sequencing with Deadlines - Greedy Method
16.  Find sibling of tree and find the cousins of a tree 
17. Tree traversal Methods 
How to implement LRU cache using HashMap and Doubly Linked List

1. https://techiedelight.quora.com/500-Data-Structures-and-Algorithms-interview-questions-and-their-solutions




1. Quick & Nimble 
2.  In fact this combination is simply easy to use and you can define the expected behavior in a more simple way than using XCTest
3. Quick is a testing framework which provides a convenient method to compose a unit test. It uses the single function spec() to define the whole test. The spec() function is composed of multiple sections. The sections are describe, context and it. I will explain the purpose and benefits of such a setup later in this article.
4. Nimble is a matching framework which provides plenty of options how to fulfill your test expectations. The keyword expect is very important, because it replaces XCTAssertion of XCTest. 


Summary of Quick & Nimble pros over XCTest:


1. Type safety -> Nimble uses generics in swift!
2. Asynchronous evaluation -> 
3. Wait until -> It does exactly what it says on the tin. The queue is blocked until the callback of waitUntil is called.
4. Multiple matching options
5. Extendibility

Test Case Terms 

1. Describe exactly describes what component you are testing. 
2. Context describes the purpose of the test or the current state of an object.   
3. It describes the expected result of the test




1. GCD     
2. Operation     
3. Access permeation which one     
4. Unit test cases     
5. Core Data     
6. Aspect fill , aspect ratio,      
7. Relation between content hugging and constraint priority     
8. DispatchSemaphore -> https://medium.com/swiftly-swift/a-quick-look-at-semaphores-6b7b85233ddb    
9. DispatchSource -<     
10. Different between ! ? and nothing given notation     
11. Different between Any and Any object     
12. Structure Memory allocations     
13. Multiply Large Numbers represented as Strings    
14. RefrenceConvertabel    
15. SOLID Principles     
16. Find pair with given sum in the array    
17. Abhishek object pool of tableview     
18. Hashmap implementation    
19. LRU Algorithms     
20. Create a cluster Notification Center     
21. NSURLSession     
22. ImageDownload Library architecture     
23. Operation Queue     
24. Heap    
25. Object pool     
26. KMP and Rabin karp Algoritm    
27. Diff utility algorithm     
28. UITableView Real Implementation     
29. Structure is thread safe  why     
30. Server encoding make small url over large URL     
31. Save Data in keychain Wrapper     
32. AES Algorithm     
33. RSA Algorithm     
34. Static analysis     
35. DOM    
36. KMP algorithm     
37. Kandan’s algorithm     
38. Dutch flage     
39. Tree traversal     
40. Floud warshal     
41. Dijkastrtar algorithm     
42. Balman ford     
43. BFS
44. DFS
45.  Stream fetch
46. Cookies support —> >  willCacheResponse. URLSessionDataDelegate    
47. Find the Closest Palindrome    
48.  Knapsack Problem    
49. Multiplication of two large integer number
50.  caches, cookies






Multiply Large Numbers represented as Strings
Related Article : 
Karatsuba algorithm for fast multiplication


Difference between inheritance and protocol 


1. In other words we can say we implement interfaces so that our class starts behaving in a particular way.
Example, we all know what animals are. Like Lion is an animal, monkey is an animal, elephant is an animal, cow is an animal and so on. Now we know all animals do eat something and sleep. But the way each animal can eat something or sleep may differ. Like Lion eats by hunting other animals where as cow eats grass. But both eat. So we can have some pseudo code like this,

2. In case of interfaces we inherit only the behaviour, not the actual code as in case of classes' inheritance.


1. https://docs.swift.org/swift-book/LanguageGuide/AutomaticReferenceCounting.html



SOLID is an acronym for a set of five software development principles, which if followed, are intended to help developers create flexible and clean code. The five principles are:

1. The single responsibility principle (SRP) states that every class or module in a program should have responsibility for just a single piece of that program’s functionality
—> A class should have only one reason to change
Examples -> Like Model object change when data structure of api change so no need add extra method and functionality in existing model like parsing and other thing. Model class has only responsibility to hold the data 

So in this principle every class or module is responsible to single piece of work.. 

God object ->> 



3. The Liskov Substitution Principle:- arguing that an object should only be considered a subtype of another object if it is interchangeable with 
Example -> Take Bird flying property and peg win is bird but can not flying so this approach provide functionality for create to protocol and Merge this protocol in each other and make Protocol flyingBird so all flying bird contain flying bird protocol and other one is Bird , so pegwin is not a flying bird so it contain only bird protocol 

4. The Interface Segregation Principle: Segregate the interface
5. The Dependency enversion principal :- Higher level class lower label classes   


CAI-9306 

1. Abhishek object pool of tableview 
2. Hashmap implementation 
3. 




Data Structure Questions 

Array <<<<<<<<<<<<<<<<<<<<<<< ——————————>>>>>>>>>>>>>>>>>>>>>>>>>
      
      1. Program for array rotation
      2. Reversal algorithm for array rotation
      3. Block swap algorithm for array rotation
      4. Program to cyclically rotate an array by one
      5. Search an element in a sorted and rotated array
      6. Given a sorted and rotated array, find if there is a pair with a given sum
      7. Find maximum value of Sum( i*arr[i]) with only rotations on given array allowed
      8. Maximum sum of i*arr[i] among all rotations of a given array
      9. Find the Rotation Count in Rotated Sorted array
      10. Quickly find multiple left rotations of an array
      11. Find the minimum element in a sorted and rotated array
      12. Reversal algorithm for right rotation of an array
      13. Find a rotation with maximum hamming distance
      14. Queries on Left and Right Circular shift on array
      15. Print left rotation of array in O(n) time and O(1) space
      16. Find element at given index after a number of rotations
      17. Split the array and add the first part to the end
      
      
      BST <<<<<<<<<<<<<<<<<<<<<<< ——————————>>>>>>>>>>>>>>>>>>>>>>>>>
      1.  Sorted Array to Balanced BST
      2.  Sorted LinkList to Balanced BST
      3.  Transform a BST to greater sum tree (Need to read artical or tutorial on it)
      4.  Construct all possible BSTs for keys 1 to N
      5.  Find the node with minimum value in a Binary Search Tree
      6.  Check if the given array can represent Level Order Traversal of Binary Search Tree
      7.  Check if a given array can represent Preorder Traversal of Binary Search Tree
      8.  Lowest Common Ancestor in a Binary Search Tree.😀😀😀😀😀😀(Fuddu)
      9.  A program to check if a binary tree is BST or not
      10.  Convert BST to Min Heap
      11.  Convert BST to Min Heap
      12. Check for Identical BSTs without building the trees
      13.  Count the Number of Binary Search Trees present in a Binary Tree
      14.  k largest(or smallest) elements in an array | added Min Heap method
      15.  Pythagorean Triplet in an array
      16.  Level Order Traversal of Binary Tree
      17. Spiral Order Traversal of Binary Tree
      18.  Find a pair with given sum in a Balanced BST
      19. Create a shorted array by using in order triversing
      20. Height of binary tree is min height = logn and maximum = n
      21. this is problem of binary tree height is not under control // so for that AVL Tree come in picture
      22. AVL Tree self balancing binary search tree// height diffrent between left and write tree not more than one
      23. balance sub factor = height of left subtree - height of right subtree <= {0,-1,1}
      24. Just like height balance tree one more tree height balance tree
      25.  Red Balck tree (min rotation compaire to AVL Tree)
      
      
      
      Some Important Interview Topics 
      1. Array ——————————
      * How do you find the missing number in a given integer array of 1 to 100? (solution)
      * How do you find the duplicate number on a given integer array? (solution)
      * How do you find the largest and smallest number in an unsorted integer array? (solution)
      * How do you find all pairs of an integer array whose sum is equal to a given number? (solution)
      * How do you find duplicate numbers in an array if it contains multiple duplicates? (solution)
      * How are duplicates removed from a given array in Java? (solution)
      * How is an integer array sorted in place using the quicksort algorithm? (solution)
      * How do you remove duplicates from an array in place? (solution)
      * How do you reverse an array in place in Java? (solution)
      * How are duplicates removed from an array without using any library? (solution)
      
      
      2. LinkList <<<<<<<<<<<<<<<<<<<<<<< ——————————>>>>>>>>>>>>>>>>>>>>>>>>>
      * How do you find the middle element of a singly linked list in one pass? (solution)
      * How do you check if a given linked list contains a cycle? How do you find the starting node of the cycle? (solution)
      * How do you reverse a linked list? (solution)
      * How do you reverse a singly linked list without recursion? (solution)
      * How are duplicate nodes removed in an unsorted linked list? (solution)
      * How do you find the length of a singly linked list? (solution)
      * How do you find the third node from the end in a singly linked list? (solution)
      * How do you find the sum of two linked lists using Stack? (solution)
      
      
      3. String <<<<<<<<<<<<<<<<<<<<<<< ——————————>>>>>>>>>>>>>>>>>>>>>>>>>
      * How do you check if two strings are anagrams of each other? (solution)
      * How do you print duplicate characters from a string? (solution)
      * How do you print the first non-repeated character from a string? (solution)
      * How can a given string be reversed using recursion? (solution)
      * How do you check if a string contains only digits? (solution)
      * How are duplicate characters found in a string? (solution)
      * How do you count a number of vowels and consonants in a given string? (solution)
      * How do you count the occurrence of a given character in a string? (solution)
      * How do you find all permutations of a string? (solution)
      * How do you reverse words in a given sentence without using any library method? (solution)
      * How do you check if two strings are a rotation of each other? (solution)
      * How do you check if a given string is a palindrome? (solution)
      
      
      4. BST <<<<<<<<<<<<<<<<<<<<<<< ——————————>>>>>>>>>>>>>>>>>>>>>>>>>
      * How is a binary search tree implemented? (solution)
      * How do you perform preorder traversal in a given binary tree? (solution)
      * How do you traverse a given binary tree in preorder without recursion? (solution)
      * How do you perform an inorder traversal in a given binary tree? (solution)
      * How do you print all nodes of a given binary tree using inorder traversal without recursion? (solution)
      * How do you implement a postorder traversal algorithm? (solution)
      * How do you traverse a binary tree in postorder traversal without recursion? (solution)
      * How are all leaves of a binary search tree printed? (solution)
      * How do you count a number of leaf nodes in a given binary tree? (solution)
      * How do you perform a binary search in a given array? (solution)
      
      
      5. Mislenious <<<<<<<<<<<<<<<<<<<<<<< ——————————>>>>>>>>>>>>>>>>>>>>>>>>>
      * How is an iterative quicksort algorithm implemented? (solution)
      * How is a bubble sort algorithm implemented? (solution)
      * How do you implement an insertion sort algorithm? (solution)
      * How is a merge sort algorithm implemented? (solution)
      * How do you implement a bucket sort algorithm? (solution)
      * How do you implement a counting sort algorithm? (solution)
      * How is a radix sort algorithm implemented? (solution)
      * How do you swap two numbers without using the third variable? (solution)
      * How do you check if two rectangles overlap with each other? (solution)
      * How do you design a vending machine? (solution)
      
      Some Important questions <<<<<<<<<<<<<<<<<<<<<<< ——————————>>>>>>>>>>>>>>>>>>>>>>>>>
      
      * Questions 1:  Different between Computed Property and function: 
      * Answer: If any call is considered to be expensive, can throw an error, or returns different results when invoked multiple times — a function is preferred,  If a call is cheap, does not throw errors, returns the same result or caches the result of its first invocation — a computed property will probably suit your needs.
      
      
      * Question 2: Difference between inheritance and protocol 
      * Answer: 
      
      HashMap implementation, Merging two sorted arrays .LRU  cache implementation
      Questions related to views, layers, rasterisation
      
      
      
      Protocol oriented Programming <<<<<<<<<<<<<<<< ——————————>>>>>>>>>>>>>>>>>>>>>>>>>
      
      
      *    Classes are awesome because it provide lots of functionality like  
      
      - Encapsulation 
      - Abstractions 
      - And many awesome feature 
      
      
      The sad story with classes 
      
      *  Defensive copy 
      *  Inefficency 
      *  Race condition 
      *  Lock 
      *  Dedlock 
      *  ComplexCity 
      *  Bugs 
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      


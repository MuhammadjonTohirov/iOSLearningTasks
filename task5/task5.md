# TASK5
1. Write a function named __parse(digit:)__ that takes a string with one character as parameter.
   The function should return -1 if the input is not a digit character and the digit otherwise.
 
 2. Write a function named __timeDifference__. It takes as input four numbers that represent two times in a day and returns the difference in minutes between them.
   The first two parameters __firstHour__ and __firstMinute__ represent the hour and minute of the first time. The last two __secondHour__ and __secondMinute__ represent the hour and minute of the second time.
   All parameters should have external parameter names with the same name as the local ones.

 3. Write a function named __verify__ that takes a string expression of open and closed parentheses ((, )) and returns true if they are correctly paired and false otherwise.

 4. Mario uses energy points to walk and jump. He can jump maximum maxJump meters up or down. You have the height of each 1 meter portion of a level in the heights array.
   Determine if Mario can finish the level and how much energy he needs to do it. Mario uses 1 energy point to walk one meter and 2 * jumpHeight energy points to jumpHeightmeters.
   Write a function named levelCost that takes heights and maxJump as parameters and returns -1 if Mario cannot finish the level or the total energy cost that he would need to finish the level.
   In the beginning Mario will be on the first 1 meter section of the level and the heights array will always have more than one element. All heights have a value greater or equal to 1.

 5.  __queue__ is a data structure that can perform two operations:
      push which takes a value and adds it at the end of the queue
	  pop which returns the value from the start of the queue and removes it from the queue
    Your task is to implement the push and pop operations. The most simple way to represent a queue is using an array. Here are some example operations:

```swift
// here we define an empty queue
var queue: [Int] = []

// add 1 in the queue
push(1, &queue) // queue = [1]

// add 2 in the queue
push(2, &queue) // queue = [1, 2]

// pop the first element
pop(&queue) // 1, queue = [2, 3]

// add 3 in the queue
push(3, &queue) // queue = [2, 3]

// pop the first element
pop(&queue) // 2, queue = [3]

// pop the first element
pop(&queue) // 3, queue = []

// pop the first element 
pop(&queue) // returns nil because there are no elements in the queue
// queue = []
```

6. A stack is a data structure that can perform three operations:
	push adds a value on the top of the stack
	top returns the value from the top of the stack
	pop returns the value from the top of the stack and removes it from there
  Your task is to implement the push, top and pop operations. The most simple way to represent a stack is using an array. Here are some example operations.
```swift
var stack: [Int] = []

push(1, &stack) // stack = [1]

push(2, &stack) // stack = [1, 2]

pop(&stack) // 2, stack = [1]

push(3, &stack) // stack = [1, 3]

pop(&stack) // 3, stack = [1]

pop(&stack) // 1, stack = []

pop(&stack) // returns nil because there are no elements in the stack
// stack = []
```

7. Write a function named __mult__ that takes two numbers as arguments and returns multiplication of these numbers. Do not use * sign, loop operations.

8. Write a function named applyKTimes that takes an integer K and a closure and calls the closure K times. The closure will not take any parameters and will not have a return value.

## EXAMPLE1
Function call:
```swift
applyKTimes(3) { 
    print("We Heart Swift")
}
```
Output:
```swift
We Heart Swift
We Heart Swift
We Heart Swift
```

9. Use filter to create an array called multiples that contains all the multiples of 3 from numbers.

10. Find the largest number from numbers and then print it. Use reduce to solve this exercise.
11. Join all the strings from strings into one using reduce. Add spaces in between strings.
12. Find the sum of the squares of all the odd numbers from numbers. Use map, filter and reduce to solve this problem.
13. Implement a function forEach(array: [Int], _ closure: Int -> ()) that takes an array of integers and a closure and runs the closure for each element of the array.

## EXAMPLE1
Function call:
```swift
forEach([1, 2, 3, 4]) {
    print($0 + 1)
}
```
Output:
```swift
2
3
4
5
```

14. Implement a function combineArrays that takes 2 arrays and a closure that combines 2 Ints into a single Int. The function combines the two arrays into a single array using the provided closure.
	Assume that the 2 arrays have equal length.
## EXAMPLE1
Input:
```swift
var array1 = [1,2,3,4]
var array2 = [5,5,5,3]
combineArrays(array1,array2) {
    $0 * $1
}
```
Output:
```swift
[5,10,15,12]
```

## EXAMPLE2
Input:
```swift
var array1 = [5,14,77,12]
var array2 = [1,5,3,13]
combineArrays(array1,array2) {
    return max($0,$1)
}
```
Output:
```swift
[5,14,77,13]
```
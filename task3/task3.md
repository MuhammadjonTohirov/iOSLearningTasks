1. Write all the numbers from 1 to N in alternative order, one number from the left side (starting with one) and one number from the right side (starting from N down to 1).

### EXAMPLE
INPUT:
```swift
	var N = 9
```
OUTPUT:
```swift
	1
	9
	2
	8
	3
	7
	4
	6
	5
```

2. Given an integer __N__ and __ch__ character. Draw a square of N x N __ch__ 's.

### EXAMPLE
INPUT:
```swift
	var N = 3
	var ch = "*"
```
OUTPUT:
```swift
***
***
***
```

3.  Given two integer __N__, __M__ and character __ch__. Draw a rectange of N x M __ch__ 's.

### EXAMPLE
INPUT:
```swift
	var N = 3 
	var M = 7
	var ch = "*"
```
OUTPUT:
```swift
*******
*******
*******
```

4. Given an integer __N__  and __ch__ character. Draw a triangle of __ch__ 's. The triangle should have N lines, the i-th line should have i __ch__ 's on it.

### EXAMPLE
INPUT:
```swift
	var N = 3
	var ch = "*"
```
OUTPUT:
```swift
*
**
***
```

5. Given an integer __N__ and __ch__ character. Draw a pyramid of __ch__ 's. The pyramid should have N lines. On the i-th line there should be N-i spaces followed by i(mult)2-1 __ch__ 's.

### EXAMPLE
INPUT:
```swift
	var N = 3
	var ch = "*"
```
OUTPUT:
```swift
  *
 ***
*****
```

6. Given an integer __N__ and __ch__ character. Draw a rhombus of __ch__ 's.

### EXAMPLE
INPUT:
```swift
	var N = 3
	var ch = "*"
```
OUTPUT:
```swift
  *
 ***
*****
 ***
  *
```

7. Given an integer __N__ and __ch__ character. Draw a Aztec pyramid of __ch__ 's.

### EXAMPLE1
INPUT:
```swift
	var N = 2
	var ch = "*"
```
OUTPUT:
```swift
  **
  **
******
******
```

### EXAMPLE2
INPUT:
```swift
	var N = 3
	var ch = "*"
```
OUTPUT:
```swift
    **
    **
  ******
  ******
**********
**********
```

8. Given an integer N draw a chess board of size N x N. Each line of the chess board should have spaces and number signs(#) alternating.
A space represents a white cell and the number sign a black one. The chess board should be bordered using +, - and |.

### EXAMPLE1
INPUT:
```swift
	var N = 3
```
OUTPUT:
```swift
+---+
|# #|
| # |
|# #|
+---+
```

### EXAMPLE2
INPUT:
```swift
	var N = 5
```
OUTPUT:
```swift
+-----+
|# # #|
| # # |
|# # #|
| # # |
|# # #|
+-----+
```

9. Write a program that prints the next N leap years starting with leapYear. A leap year is a year containing an extra day.
It has 366 days instead of the normal 365 days. The extra day is added in February, which has 29 daysinstead of the normal 28 days.
Leap years occur every 4 years, 2012 was a leap year and 2016 will be a leap year.
Except that every 100 years special rules apply. Years that are divisible by 100 are not leap years if they are not divisible by 400.
For example 1900 was not a leap year, but 2000 was.

### EXAMPLE
INPUT:
```swift
	var N = 6
	var leapYear = 2016
```
OUTPUT:
```swift
2016
2020
2024
2028
2032
2036
```

10. You are given a number. Print the number with the digits in reversed order.
11. You are given two numbers a and b. Find and print the greatest common divisor of a and b.
	The greatest common divisor of a and b is the largest number that divides both a and b.
12. You are given a number. Decompose number into prime factor and write it as an expression(see examples).

### EXAMPLE1
INPUT:
```swift
	var number = 24
```
OUTPUT:1
```swift
24 = 2 * 2 * 2 * 3
```

### EXAMPLE2
INPUT:
```swift
	var number = 7
```
OUTPUT:
```swift
7 = 7
```

13. Find all numbers free of squares less than or equal to N.
A number is free of square if it cannot be divided by any square number except 1.

### EXAMPLE
INPUT:
```swift
	var N = 30
```
OUTPUT:
```swift
1
2
3
5
6
7
10
11
13
14
15
17
19
21
22
23
26
29
30
```

13. Write a function for test case with name AssertEqual(expression: Bool, message: String), that if expression is true print an message, else raise fatal error.
With this function test all above tasks.

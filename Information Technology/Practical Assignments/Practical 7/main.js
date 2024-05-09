/**
 * 1.   Write a JavaScript program, For a user input number, to find the following-
 *          a.  If the number is a positive integer in the range 2-100.
 *          b.  If this number is prime or composite.
 *              If number is found prime then print Fibonacci series till that element
 *              otherwise factorial of that number is to be printed.
 * 2.   Write a JavaScript program to sort the items of an array.
 * 3.   Write HTML/JS program, for a given UL list of 5 items, and 
 *      retrieve 3rd list item through DOM manipulation and change its attributes value.
 */

// Q1
var n = prompt('Enter a number:');
n = parseInt(n);
document.writeln("Entered Number = " + n);
if (n >= 2 && n <= 100) {
    document.writeln('<br>Entered number is a positive integer in the range 2-100.<br>');
} else{
    document.writeln('<br>Entered number is NOT a positive integer in the range 2-100.<br>');
}

if (isPrime(n)) {
    document.writeln("Since " + n + " is prime therefore printing fibonacci series:<br>");
    for (let i = 0; i < n+1; i++) {
        document.writeln(fibonacci(i))
    }
} else {
    document.writeln("Since " + n + " is composite therefore printing factorial:<br>" + factorial(n));
}

function isPrime(n, i = 2) {
    // Base cases
    if (n <= 2)
        return (n == 2) ? true : false;
    if (n % i == 0)
        return false;
    if (i * i > n)
        return true;

    // Check for next divisor
    return isPrime(n, i + 1);
}

function fibonacci(n) {
    if (n < 2) {
        return n;
    }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

function factorial(n) {
    if (n < 2) {
        return 1;
    }
    return n * factorial(n - 1);
}

//Q2
var a = [3, 4, 1, 5, 7, 8, 2];
document.writeln("<br><br>Unsorted Array: "+a);
for (let i = 1; i < a.length; i++) {
    let tmp = a[i];
    let j = i - 1;
    while (j >= 0 && a[j] > tmp) {
        a[j + 1] = a[j];
        j--;
    }
    a[j + 1] = tmp;
}
document.writeln("<br>Sorted Array: "+a);

//Q3
var third = document.getElementsByTagName('li')[2];
third.style.color = 'red';
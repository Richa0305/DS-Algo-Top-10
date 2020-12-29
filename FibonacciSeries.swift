import UIKit
/**
 
    Fibonacci series - Find nth number in Fibonacci series
        0, 1, 1, 2, 3, 5, 8, 13, 21, 34
 
 https://stevenpcurtis.medium.com/fibonacci-series-in-depth-using-swift-4699e940e89f
 

 */


// Iterative Approach


func fib(_ num : Int) -> Int {
    guard num > 1 else {
        return num
    }
    
    var a = 0
    var b = 1
    var c = 0
    
    for _ in 2..<num {
        c = a + b
        a = b
        b = c
    }
    return c
}
fib(10)


// Recursive Approach

func fibRec(_ num: Int) -> Int {
    guard num > 1 else {
        return num
    }
    return fibRec(num-1) + fibRec(num-2)
}
fibRec(6)

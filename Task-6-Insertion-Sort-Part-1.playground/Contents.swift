//: Playground - noun: a place where people can play


//Insert element into sorted list
//Given a sorted list with an unsorted number  in the rightmost cell, can you write some simple code to insert  into the array so that it remains sorted?
//
//Print the array every time a value is shifted in the array until the array is fully sorted. The goal of this challenge is to follow the correct order of insertion sort.
//
//Guideline: You can copy the value of  to a variable and consider its cell "empty". Since this leaves an extra cell empty on the right, you can shift everything over until  can be inserted. This will create a duplicate of each value, but when you reach the right spot, you can replace it with .
//
//Input Format
//There will be two lines of input:
//
//- the size of the array
//- the unsorted array of integers
//Output Format
//On each line, output the entire array every time an item is shifted in it.
//
//Constraints
//
//
//
//Sample Input
//
//5
//2 4 6 8 3
//Sample Output
//
//2 4 6 8 8
//2 4 6 6 8
//2 4 4 6 8
//2 3 4 6 8
//Explanation
//
//is removed from the end of the array.
//In the st line , so  is shifted one cell to the right.
//In the nd line , so  is shifted one cell to the right.
//In the rd line , so  is shifted one cell to the right.
//In the th line , so  is placed at position .
//
//Task
//
//Complete the method insertionSort which takes in one parameter:
//
//- an array with the value  in the right-most cell.


import UIKit


func insertnumber(in myArr: [Int]) -> [Int] {
    
    guard myArr.count > 1 else { return myArr }
    
    var copyOfMyArray = myArr
    
    for i in 1..<copyOfMyArray.count {
       // print(i)
        
        var y = i
// let arr = [2, 4, 6, 8, 3]       
        let temp = copyOfMyArray[y]
        print(temp)
        
        while y > 0 && temp < copyOfMyArray[y - 1] {
            print("y = \(y)\n")
            print("b[y - 1] = \(copyOfMyArray[y - 1])\n")
            
            copyOfMyArray[y] = copyOfMyArray[y - 1]
            print("b[y] = \(copyOfMyArray[y])\n")
            
            y -= 1
            print("y after iter. = \(y)\n")
        }
        
        copyOfMyArray[y] = temp
        
    }
    
    return copyOfMyArray
    
//    var resultArr: [Int] = []
//    
//    let lastNumber = myArr.last
//    
//    for index in myArr {
//        
//        
//    }
//    
//    
//    
//    return resultArr
}

let arr = [2, 4, 6, 8, 3]

insertnumber(in: arr)



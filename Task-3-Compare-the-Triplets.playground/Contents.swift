//: Playground - noun: a place where people can play

import UIKit

//Alice and Bob each created one problem for HackerRank. A reviewer rates the two challenges, awarding points on a scale from  to  for three categories: problem clarity, originality, and difficulty.
//
//We define the rating for Alice's challenge to be the triplet , and the rating for Bob's challenge to be the triplet .
//
//Your task is to find their comparison scores by comparing  with ,  with , and  with .
//
//If , then Alice is awarded  point.
//If , then Bob is awarded  point.
//If , then neither person receives a point.
//Given  and , can you compare the two challenges and print their respective comparison points?
//
//Input Format
//
//The first line contains  space-separated integers, , , and , describing the respective values in triplet .
//The second line contains  space-separated integers, , , and , describing the respective values in triplet .
//
//Constraints
//
//
//
//Output Format
//
//Print two space-separated integers denoting the respective comparison scores earned by Alice and Bob.
//
//Sample Input
//
//5 6 7
//3 6 10
//Sample Output
//
//1 1
//Explanation
//
//In this example:
//
//
//
//Now, let's compare each individual score:
//
//, so Alice receives  point.
//, so nobody receives a point.
//, so Bob receives  point.
//Alice's comparison score is , and Bob's comparison score is . Thus, we print 1 1 (Alice's comparison score followed by Bob's comparison score) on a single line.


func compareTheElements(in aliceArray: [Int], with bobArray: [Int]) {
    var aliceScore = Int()
    var bobScore = Int()
    
    // we have only three elements in our arrays
    //    for i in 0...2 {
    //        if aliceArray[i] > bobArray[i] {
    //            aliceScore += 1
    //        } else if aliceArray[i] < bobArray[i] {
    //            bobScore += 1
    //        }
    //    }
    
    // Alternative solution with Zip2Sequence. In this case we don't have to worry about the length of our arays.
    for (aliceArray, bobArray) in zip(aliceArray, bobArray) {
        if aliceArray > bobArray {
            aliceScore += 1
        } else if aliceArray < bobArray {
            bobScore += 1
        }
    }
    print("\(aliceScore) \(bobScore)")
}

let aliceRating = [5, 6, 7]
let bobRating = [3, 6, 10]

compareTheElements(in: aliceRating, with: bobRating) // 1 1





























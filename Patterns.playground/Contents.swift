import UIKit

var greeting = "Hello, playground"

//MARK: - Pattern 01
//* * *
//* * *
//* * *
//* * *

func pattern1(){

let n = 4
var i = 1
    while (i <= n){
        var j = 1
        while(j < n){
            print("*",separator: " ",terminator: " ")
            j = j + 1
        }
        print("\n")
        i = i + 1
    }
}
pattern1()

//MARK: - Pattern 02
//*
//* *
//* * *
//* * * *

func pattern2(){
    var n = 3
    var i = 1

    for i in 0...n {
        for j in 0...i{
            print("*",terminator: " ")
        }
        print("\n")
    }
}
pattern2()

//MARK: - Pattern 03
//* * * *
//* * *
//* *
//*

func pattern3(){
    let n = 3

    for i in 0...n {

        for j in stride(from: n, to: i, by: -1){
            print("*",separator: " ",terminator: " ")
        }
        print("*")
        print("\n")
    }
}

pattern3()

//MARK: - Pattern4
//      *
//    * *
//  * * *
//* * * *

func pattern4(){
    let n = 3

    for i in 0...n{
        for _ in stride(from: n, to: i, by: -1){
            print("",terminator: " ") // empty " " will alter result
        }

        for _ in 0...i {
            print("*",terminator: " ")
        }
        print("")
    }

}

//pattern4()
//MARK: - Pattern5
//   *
//  * *
// * * *
//* * * *

func pattern5(){
    let n = 3

    for i in 0...n{
        for _ in stride(from: n, to: i, by: -1){
            print(" ",terminator: " ") // empty " " will alter result
        }

        for _ in 0...i {
            print("*",terminator: " ")
        }
        print("")
    }

}

pattern5()

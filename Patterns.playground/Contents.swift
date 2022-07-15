//import UIKit
//
//var greeting = "Hello, playground"
//
////MARK: - Pattern 01
////* * *
////* * *
////* * *
////* * *
//
//func pattern1(){
//
//let n = 4
//var i = 1
//    while (i <= n){
//        var j = 1
//        while(j < n){
//            print("*",separator: " ",terminator: " ")
//            j = j + 1
//        }
//        print("\n")
//        i = i + 1
//    }
//}
//pattern1()
//
////MARK: - Pattern 02
////*
////* *
////* * *
////* * * *
//
//func pattern2(){
//    var n = 3
//    var i = 1
//
//    for i in 0...n {
//        for j in 0...i{
//            print("*",terminator: " ")
//        }
//        print("\n")
//    }
//}
//pattern2()
//
////MARK: - Pattern 03
////* * * *
////* * *
////* *
////*
//
//func pattern3(){
//    let n = 3
//
//    for i in 0...n {
//
//        for j in stride(from: n, to: i, by: -1){
//            print("*",separator: " ",terminator: " ")
//        }
//        print("*")
//        print("\n")
//    }
//}
//
//pattern3()
//
////MARK: - Pattern4
////      *
////    * *
////  * * *
////* * * *
//
//func pattern4(){
//    let n = 3
//
//    for i in 0...n{
//        for _ in stride(from: n, to: i, by: -1){
//            print("",terminator: " ") // empty " " will alter result
//        }
//
//        for _ in 0...i {
//            print("*",terminator: " ")
//        }
//        print("")
//    }
//
//}
//
////pattern4()
////MARK: - Pattern5
////   *
////  * *
//// * * *
////* * * *
//
//func pattern5(){
//    let n = 3
//
//    for i in 0...n{
//        for _ in stride(from: n, to: i, by: -1){
//            print(" ",terminator: " ") // empty " " will alter result
//        }
//
//        for _ in 0...i {
//            print("*",terminator: " ")
//        }
//        print("")
//    }
//
//}
//
//pattern5()

//1
//2 2
//3 3 3
//4 4 4 4
//5 5 5 5 5
//MARK: - Pattern6

//func printPattern6(){
//    let n = 5
//    var i = 0
//
//    while( i <= n){
//        var j = 0
//        while( j < i){
//            print(i,terminator: " ")
//            j = j + 1
//        }
//        i = i + 1
//        print(" ")
//    }
//}
//
//printPattern6()
//1
//2 3
//4 5 6
//7 8 9 10
//func pattern7(){
//   var n = 5
//   var row = 0
//    var counter = 1
//
//    while(row < n){
//        var column = 0
//        while(column < row){
//            print(counter,terminator:  " ")
//            counter = counter + 1
//        column = column + 1
//        }
//        print(" ")
//        row = row + 1
//    }
//
//}
//
//pattern7()
//1
//2 3
//3 4 5
//4 5 6 7
//MARK: - Pattern8
//func pattern8(){
//   let n = 5
//   var row = 0
//
//    while(row < n){
//        var count = row
//        var column = 0
//        while( column < row){
//
//            print(count,terminator: " ")
//            count = count + 1
//            column = column + 1
//        }
//        print("")
//        row = row + 1
//    }
//}

//pattern8()
//1
//2 1
//3 2 1
//4 3 2 1
//MARK: - pattern10
//func pattern10(){
//   let n = 5
//   var row = 0
//
//    while ( row < n){
//        var column = 0
//        var count = row
//
//        while(column < row ){
//         print(count,terminator: " ")
//            count = count - 1
//            column = column + 1
//        }
//        print("")
//        row = row + 1
//    }
//}
//
//pattern10()

func pattern11(){
   let n = 5
   var row = 0

    while ( row < n){
        var column = 0
        var count = row

        while(column < row ){
         print(count,terminator: " ")
            count = count - 1
            column = column + 1
        }
        print("")
        row = row + 1
    }
}
//
//pattern11()
//MARK: - Pattern12
//A A A A A
//B B B B B
//C C C C C
//D D D D D
//E E E E E
func pattern12(){
    let n = 5
    var row = 0
    let initialChar = "A"
    
    var rawChar : UInt8 = UInt8(initialChar.encodeAschiiValue) - 1
    print(rawChar)
    while(row < n ){
        rawChar = rawChar + 1
        var column = 0
        while(column < n){
            let charToPrint = rawChar.decodeAschiiValue
            print(charToPrint,terminator:  " ")
            column = column + 1
        }
        row = row + 1
        print("")
    }
}

extension String{
    var encodeAschiiValue : UInt32{
        return unicodeScalars.first?.value ?? UInt32()
    }
}

extension UInt8 {
    var decodeAschiiValue : String{
        return String(UnicodeScalar(self))
    }
}
pattern12()

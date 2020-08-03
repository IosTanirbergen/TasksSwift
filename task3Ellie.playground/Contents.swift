import Foundation
import UIKit
import PlaygroundSupport


func Ellie(n: Int, ar: [Int]) -> Int {
    var counterForColors : Int = 0
    var secondArray = [Int]()
    for i in 0..<n {
        let defaultColors = ar[i]
        if let index = secondArray.firstIndex(of: defaultColors)  /*  мы сравниваем два массива, если есть два одинаковых элемента, то удаляем их из массива, если есть один экземпляр второго, то добавляем его обратно в массив */ {
                counterForColors+=1
                secondArray.remove(at: index)
        }else{
            secondArray.append(defaultColors)
        }
    }
    return counterForColors
}
Ellie(n: 9, ar: [10, 20, 20, 10, 10, 30, 50, 10, 20])


/*
 1)можно решить через сорт sort(0,ar[i]) && sort(0,arr2[i]) ar[0]==ar2[0] remove , else append
 2)или return ar[0]+ar2[0]/2?ar[0]:ar2[0] then let stackArray.remove(at : Index)
 */

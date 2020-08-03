import UIKit
import Foundation
var count = 0
var result = true
func minimumGraft(q: [Int]) -> Void {
 for i in stride(from: (q.count - 1), through: 0, by: -1) {
        if (q[i] - (i+1) > 2) {
           result = false // если больше(взятка) два шага  остановим building
            break;
        }
        for j in  stride(from: max(0, q[i] - 2), to: i, by: 1){
            if q[j] > q[i] { /*найдем максимум, запись на массив и дадим максимум два жага если j(4)>i(5) считаем counter это минимум ход(взятка) до сортировки(грубо говоря)*/
                count += 1
            }
        }
    }
    if result {
        print(count)
        return
    }
        print("Too chaotic")
 
}
minimumGraft(q: [2,1,5,3,4])
minimumGraft(q: [2,5,1,3,4])

/* еще я думаю этот задачу можно так изи решить найдем позицию максимум элемента , это [2,1,"5",3,4]
                                                                                    i = 1 2  3  4  5   и n унас количество очередь ровно 5 , максимум = 5 его индекс равно на 3, n-i = ход -> 5 - 3 = 2 ,if 2 ход <= 2 взятк = true
 
 
 
                                                                                      example 2: [2,"5",1,3,4]
                                                                                              i = 1  2  3 4 5 , теперь index = 2 , maxNumber = 5 , maxnumber - Index = 3 ход а у нас максимум 2 взятк можно , if 3 ход <= 2 взятк = true а это false не равно или больше, pring("Too chaotic")    */

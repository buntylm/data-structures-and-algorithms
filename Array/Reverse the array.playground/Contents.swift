import UIKit

var str = "Reverse an array"

extension Array {
    func reverseArr() -> Array {
        
        var startIndex  = 0
        var endIndex = self.count - 1
        var output = self
        
        while startIndex < endIndex {
            
            let temp = self[startIndex]
            output[startIndex] = self[endIndex]
            output[endIndex] = temp
            
            startIndex += 1
            endIndex -= 1
        }
        
        return output
    }
}

let intArr = [1,2,3,4,5]
assert(intArr.reverseArr() == intArr.reversed())

let strArr = ["1","2","3","4","5"]
assert(strArr.reverseArr() == strArr.reversed())

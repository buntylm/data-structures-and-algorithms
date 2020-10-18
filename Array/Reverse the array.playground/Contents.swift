import UIKit

var str = "Reverse an array"

extension Array {
    // Iterative approach
    func reverseArrUsingIterativeApproach() -> Array {
        
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
    
    // Recursive approach
    func reverseArrUsingRecursiveApproach(arr: inout Array, startIndex: Int, endIndex: Int) {
        
        if startIndex >= endIndex {
            return
        }
        
        let temp = arr[startIndex]
        arr[startIndex] = arr[endIndex]
        arr[endIndex] = temp
        
        reverseArrUsingRecursiveApproach(arr: &arr, startIndex: startIndex + 1, endIndex: endIndex - 1)
    }
}

var intArrIterative = [1,2,3,4,5]
assert(intArrIterative.reverseArrUsingIterativeApproach() == intArrIterative.reversed())

var intArrRecursive = [1,2,3,4,5]
intArrRecursive.reverseArrUsingRecursiveApproach(arr: &intArrRecursive, startIndex: 0, endIndex: intArrRecursive.count - 1)
assert(intArrRecursive == [5,4,3,2,1])

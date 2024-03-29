import UIKit

func mergeIntervals(_ input: [[Int]]) -> [[Int]] {
    guard input.count > 1 else {
        return input
    }
    
    let sortedInput = input.sorted(by: { item1, item2 in
        return item1[0] < item2[0]
    })
    
    var result = [[Int]]()
    result.reserveCapacity(input.count)
    
    result.append(sortedInput[0])
    
    for i in 1..<sortedInput.count {
        let current = sortedInput[i]
        let lastInterval = result.last!
        
        if current[0] >= lastInterval[0] &&
            current[0] <= lastInterval[1] {
            _ = result.removeLast()
            result.append([
                min(current[0], lastInterval[0]),
                min(current[1], lastInterval[1]),
            ])
        }
        else {
            result.append(current)
        }
    }
    
    return result
}

let input: [[Int]] = [
    [1, 3],
    [12, 15],
    [23, 41],
    [8, 10],
    [2, 6],
    [13, 21],
    [20, 21],
    [14, 22],
]


let result = mergeIntervals(input)
print("\n\n\(result)\n")




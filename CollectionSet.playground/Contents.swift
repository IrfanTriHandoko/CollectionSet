// Collection Set: https://developer.apple.com/documentation/swift/set/intersection(_:)-1zh8f
let array1 = [["id": "1", "name": "Doko"],["id": "2", "name": "Diki"], ["id": "3", "name": "Doki"], ["id": "5", "name": "Diki"]]
let array2 = [["id": "1", "name": "Doko"],["id": "2", "name": "Diki"],["id": "4", "name": "Diko"]]
// 1
var sameTwoLoops: [Any] = []
var diffTwoLoops: [Any] = []
array2.forEach { item2 in
    array1.forEach { item1 in
        if item1["id"] == item2["id"] {
            sameTwoLoops.append(item1)
        }
    }
}
print("Result with two loops: \(sameTwoLoops)")
// 2
let sameFilter = array2.filter { item in
    return array1.contains(where: {$0["id"] == item["id"]})
}
print("Result with filter: \(sameFilter)")
// 3
let sameIntersection = Array(Set(array2).intersection(Set(array1)))
print("Result with intersection: \(sameIntersection))")


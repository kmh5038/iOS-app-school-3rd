//: [Previous](@previous)

import Foundation

// 딕셔너리 예제 01
// 다음과 같은 딕셔너리가 주어졌을 때, 가장 많이 등장하는 값(value)을 출력하는 함수를 작성하세요.

func mostFrequentValue(dict: [String: Int]) -> Int {
    var frequency = [Int:Int]()
    for value in dict.values {
        frequency[value, default: 0] += 1
    }

    var maxFreq = 0
    var maxValue = 0
    for (value, freq) in frequency {
        if freq > maxFreq {
            maxFreq = freq
            maxValue = value
        }
    }

    return maxValue
}

let dict1 = ["a": 1, "b": 2, "c": 3, "d": 2, "e": 2]
mostFrequentValue(dict: dict1)


//딕셔너리 예제 02
// 다음과 같은 딕셔너리가 주어졌을 때, 키(key)와 값(value)의 순서를 바꾼 새로운 딕셔너리를 반환하는 함수를 작성하세요. (단, 값(value)이 중복되는 경우는 고려하지 않는다.)

func reverseKeyValue(dict: [String: String]) -> [String: String] {
    var reversedDict = [String:String]()
    for (key, value) in dict {
        reversedDict[value] = key
    }
    return reversedDict
}

let dict2 = ["apple": "red", "banana": "yellow", "grape": "purple"]
let result = reverseKeyValue(dict: dict2)
print(result)       // ["red": "apple", "yellow": "banana", "purple": "grape"]


// 셔너리 예제 03
// 다음과 같은 딕셔너리가 주어졌을 때, 특정한 값(value)을 가진 모든 키(key)의 리스트(list)를 반환하는 함수를 작성하세요.

func keysWithValue(dict: [String: Int], value: Int) -> [String] {
    var keys = [String]()
    for (key, val) in dict {
        if value == val {
            keys.append(key)
        }
    }
    return keys
}

let dict3 = ["a": 1, "b": 2, "c": 3, "d": 2, "e": 1]
let result = keysWithValue(dict: dict3, value: 2)
print(result)       // ["d", "b"]


// 딕셔너리 예제 04
// 다음과 같은 딕셔너리가 주어졌을 때, 모든 키(key)와 값(value)의 쌍(pair)을 문자열(string)로 변환하여 출력하는 함수를 작성하세요. (단, 키(key)와 값(value) 사이에는 콜론(:)을, 쌍(pair) 사이에는 쉼표(,)를 넣어야 한다.)

func dictToString(dict: [String: Any]) -> String {
    var str = ""
    for (key,value) in dict{
        str += "\(key):\(value),"
    }
    //마지막 반점 빼기
    str.removeLast()
    return str
}


// 딕셔너리 예제 05
// 다음과 같은 딕셔너리가 주어졌을 때, 모든 키(key)의 합(sum)과 모든 값(value)의 합(sum)을 각각 구하여 튜플(tuple)로 반환하는 함수를 작성하세요.

func sumOfKeysAndValues(dict: [Int: Int]) -> (Int, Int) {
  var sumOfKeys = 0
  var sumOgValues = 0
  for (key, value) in dict {
    sumOfKeys += key
    sumOgValues += value
  }
  return (sumOfKeys, sumOgValues)
}


// 딕셔너리 예제 06
// 다음과 같은 딕셔너리가 주어졌을 때, 키가 "name"인 값을 출력하는 코드를 작성하세요.

let person: [String : Any] = ["name": "Kim", "age": 25, "job": "programmer"]
print( person["name"] ?? "Unknown" )


// 딕셔너리 예제 07
// 다음과 같은 딕셔너리가 주어졌을 때, 모든 키와 값을 한 줄씩 출력하는 코드를 작성하세요.

let fruit = ["apple": 3, "banana": 5, "orange": 2]
for (key, value) in fruit {
    print("\(key): \(value)")
}


// 딕셔너리 예제 08
// 다음과 같은 딕셔너리가 주어졌을 때, 값이 가장 큰 스코어를 찾아서 출력하는 코드를 작성하세요. 값이 같은 스코어가 여러 개 있으면 아무거나 출력해도 됩니다.

var max = (key: "", value: 0)
for (key, value) in scores {
    if value > max.value {
        max = (key, value)
    }
}
print(max.key)


// 딕셔너리 예제 09
// 다음과 같은 딕셔너리가 주어졌을 때, 키와 값을 서로 바꾼 새로운 딕셔너리를 만드는 코드를 작성하세요. (단, 기존의 딕셔너리는 변경하지 않는다.)

var reversedColors = [String:String]()
for (key, value) in colors {
    reversedColors[value] = key
}
print(reversedColors)


//딕셔너리 예제 10
// 다음과 같은 두 개의 딕셔너리가 주어졌을 때, 두 딕셔너리의 공통된 키의 키와 값을 출력하는 코드를 작성하세요.

for (key, value) in dict1 {
    // 키가 동일한 경우의 코드
    if let value2 = dict2[key] {
        print("\(key):\(value)")
        print("\(key):\(value2)")
    }
}


// 딕셔너리 예제 11
// 다음과 같은 딕셔너리가 주어졌을 때, 값이 짝수인 키와 값을 삭제하는 코드를 작성하세요.

for (key, value) in even {
    if value % 2 == 0 {
        even[key] = nil
    }
}

print(even)


// 딕셔너리 예제 12
// 다음과 같은 딕셔너리가 주어졌을 때, 키를 알파벳 순서로 정렬하여 출력하는 코드를 작성하세요.

let sortedKeys = countries.keys.sorted()

for key in sortedKeys {
    print(key)
}
print(sortedKeys)

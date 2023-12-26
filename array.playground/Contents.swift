import UIKit

// 배열 : 같은 타입의 여러 변수를 하나의 묶음으로 다루는 것



// array 예제 01


// 1.정수형 데이터를 담을 수 있는 배열 array를 선언하세요
// 2.정수형 데이터 10개를 담을 수 있도록 array배열을 생성하세요
// 3.각각의 인덱스에 1~20까지의 랜덤수를 초기화하세요
// 4.배열array의 각각에 인덱스에 들어있는 모든 데이터를 출력하세요.
// 5.4번째 인덱스에 들어있는 값과 9번째 인덱스에 들어있는 값을 더하여 결과 값을 출력하세요
// 6.각각의 인덱스에 들어있는 데이터를 모두 더하여 결과 값을 출력하세요
// 7.배열 안에 있는 수의 평균을 구하여 출력하세요


let range = 1...20
let size = 10
let array = (0..<size).map {_ in range.randomElement()! }
print(array)


// array 예제 02

// 1차원 정수형 배열을 선언한 후 임의의 값으로 초기화 합니다. 배열의 값 중 짝수인 값만 출력하는 프로그램을 작성하세요


let range1 = 1...20
let size1 = 10
let array1 = (0..<size).map {_ in range.randomElement()! }
print(array)

print()
var resutArray: [Int] = []

for i in 0..<array1.count {
    if array1[i] % 2 == 0 {
        resutArray.append(array1[i])
    }
}
print("array에 들어있는 짝수는 \(resutArray) 입니다.")


// array 예제 03

// 1차원 정수형 배열을 선언한 후 임의의 값으로 초기화 합니다. 배열의 값 중 홀수인 값이 몇 개인지 출력하는 프로그램을 작성하세요


let range2 = 1...20
let size2 = 10
let array2 = (0..<size).map {_ in range.randomElement()! }
print(array)

print()
var resutArray2: [Int] = []
for i in 0..<array2.count {
    if array2[i] % 2 != 0 {
        resutArray.append(array2[i])
    }
}
print("array에 들어있는 홀수는 \(resutArray2)이며, 총 \(resutArray2.count)개 입니다.")



// array 예제 04

// 1차원 정수형 배열을 선언한 후 임의의 값으로 초기화 합니다. 배열의 값 중 가장 큰 값을 찾아 출력하는 프로그램을 작성하세요


var array4: [Int] = [Int](repeating: 0, count: 10)

for i in 0..<array4.count {
   array4[i] = Int.random(in: 0...100)
}

print(array4)


func maxNum(num1: [Int]) {

    for i in 0..<9{
        let i = 0
       if array4[i] > array4[i+1] {
           array4.remove(at: 1)
       } else if array4[i] < array4[i+1] {
           array4.remove(at: 0)
       } else if array4[i] == array4[i+1] {
           array4.remove(at: 0)
       }
   }
   print("가장 큰 값은 \(array4[0]) 입니다")

}

 maxNum(num1: array4)



// array예제 05

// 1차원 정수형 배열을 선언한 후 임의의 값으로 초기화 합니다. 배열의 값 중 가장 작은 값을 찾아 출력하는 프로그램을 작성하세요.

var array5: [Int] = [Int](repeating: 0, count: 10)

for i in 0..<array5.count {
    array5[i] = Int.random(in: 0...100)
}

print(array5)


func minNum(num1: [Int]) {

    for i in 0..<9{
        let i = 0
       if array5[i] > array5[i+1] {
           array5.remove(at: 0)
       } else if array5[i] < array5[i+1] {
           array5.remove(at: 1)
       } else if array5[i] == array5[i+1] {
           array5.remove(at: 0)
       }
   }
   print("가장 작은 값은 \(array5[0]) 입니다")

}

minNum(num1: array5)



// array 예제 6

// 1차원 문자형 배열을 선언한 후 '수','박'으로 초기화 합니다.
// 숫자를 입력받아 짝수인 4의 경우 “수박수박”, 홀수인 3의 경우 “수박수“ 를 출력하는 프로그램을 작성하세요


print("=== 수박 게임 시작! ===")
print("숫자를 입력해주세요: ", terminator: "")
let waterMelonNum:Int = Int(readLine()!)!

var array6:[String] = ["수","박"]

func waterMelon(num: Int)  {
    for i in 1...num {
        if i % 2 != 0 {
            print("\(array6[0])", terminator: "")
        } else if i % 2 == 0 {
            print("\(array6[1])", terminator: "")
        }
    }
    print()
}

waterMelon(num: waterMelonNum)


// array 예제7

//1차원 정수형 배열을 선언한 후 10개의 공간으로 생성합니다. 숫자를 입력 받아 3의 배수인 숫자를 출력하는 프로그램을 작성하세요.

var array7:[Int] = []

print("1번 쨰 정수 입력: ", terminator: "")
let numm1:Int = Int(readLine()!)!
array7.append(numm1)
print("2번 쨰 정수 입력: ", terminator: "")
let numm2:Int = Int(readLine()!)!
array7.append(numm2)
print("3번 쨰 정수 입력: ", terminator: "")
let numm3:Int = Int(readLine()!)!
array7.append(numm3)
print("4번 쨰 정수 입력: ", terminator: "")
let numm4:Int = Int(readLine()!)!
array7.append(numm4)
print("5번 쨰 정수 입력: ", terminator: "")
let numm5:Int = Int(readLine()!)!
array7.append(numm5)
print("6번 쨰 정수 입력: ", terminator: "")
let numm6:Int = Int(readLine()!)!
array7.append(numm6)
print("7번 쨰 정수 입력: ", terminator: "")
let numm7:Int = Int(readLine()!)!
array7.append(numm7)
print("8번 쨰 정수 입력: ", terminator: "")
let numm8:Int = Int(readLine()!)!
array7.append(numm8)
print("9번 쨰 정수 입력: ", terminator: "")
let numm9:Int = Int(readLine()!)!
array7.append(numm9)
print("10번 쨰 정수 입력: ", terminator: "")
let numm10:Int = Int(readLine()!)!
array7.append(numm10)

print("3의 배수: ", terminator: "")

for i in 0..<array7.count {
    if array7[i] % 3 == 0 {
        print("\(array7[i]) " , terminator: "")
    }

}
print()



// array 예제8

// 다음과 같이 정답이 있을 때 사용자로부터 답을 입력받아 결과를 출력하고 총점을 출력하는 프로그램을 작성하세요.

var array8:[Int] = [1,1,4,2,3]
var resultOx:[String] = []
var totalScore = 0

print("=== 채점하기! ===")
print("답을 입력하세요")

for i in 0..<array8.count {
    print("\(i+1)번답: " , terminator: "")
    var result = Int(readLine()!)!

    if array8[i] == result {
        resultOx.append("O")
        totalScore += 20
    } else if array8[i] != result {
        resultOx.append("X")
    }
}

print("정답확인")
for i in 0...4 {
    print("\(resultOx[i]) ", terminator: "")
}
print("총점: \(totalScore)")




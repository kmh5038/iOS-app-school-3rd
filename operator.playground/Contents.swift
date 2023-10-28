import UIKit

// 기본 연산자 : 연산자 (operator) 는 값을 체크, 변경, 또는 결합하기 위해 사용하는 기호 또는 구 입니다.

// 연산자 예제 01

// 코드를 완성하여 다음과 같은 결과를 출력하세요
// 더하기 결과: 10
// 빼기 결과: 4
// 곱하기 결과: 21
// 나누기 결과: 2.3333333333333335

let num1 = 7
let num2 = 3
print("더하기 결과:", num1+num2)
print("빼기 결과:", num1-num2)
print("곱하기 결과:", num1*num2)
print("나누기 결과:", Double(num1)/Double(num2))


// 연산자 예제 2
// 변수 num 값 중에서 백의 자리 이하를 버리는 코드이다. 만일 변수 num의 값이 456이라며 400이 되고, 111이라면 100이 된다.

func solve(_ num:Int) -> Int {
    return (num / 100) * 100
}


// 연산자 예제 3

// 제주도에 다녀온 김모 씨는 3,729개의 귤을 샀다. 김모 씨는 주위 사람들에게 귤을 나눠주려고 하는데 너무 많아서 문제가 생겼습니다.
// 김모씨는 귤을 한 사람당 52개씩 박스에 담아서 나눠주려고 합니다.
// 김모씨가 사람들에게 줄 수 있는 박스의 수와 남은 귤 갯수를 구해보세요.

let orange: Int = 3729;
let number: Int = 52;

print("김모씨가 귤 박스를 줄 수 있는 박스의 수는? \(orange / number)")
print("박스에 담고 남은 귤 수는?", orange % number)


// 연산자 예제 4

// 변수 num 값 중에서 일의 자리를 1로 바꾸는 코드이다. 만일 변수 num의 값이 456 이라면 451이 되고, 777이라면 771이 된다.

let num = Int(readLine()!)!
var ans = 0
if(num % 10 == 0) {
    ans = num + 1
} else {
    ans = num - (num % 10 - 1)
}

// 연산자 예제 5

// Swift, iOS, Web 점수를 키보드로 부터 입력 받아 합계와 평균을 출력하세요

// Swift 점수입력: 90
// iOS 점수입력: 95
// Web 점수입력: 100
// 합계: 285
// 평균: 95.0

import Foundation

func inputScore(_ name: String) -> Int {
    print(name, "점수입력:", terminator: " ")
    return Int(readLine()!)!
}

let swift = inputScore("Swift")
let ios = inputScore("iOS")
let web = inputScore("Web")

let sum = swift + ios + web
let avg = Float(sum) / 3.0

print("합계:", sum)
print("평균:", avg)


// 연산자 예제 6

// 초를 입력 받아 [시, 분, 초] 형태로 출력하세요.


func inputLine(_ message: String) -> Int {
    print(message, terminator: " ")
    return Int(readLine()!)!
}


let t = inputLine("초 입력:")

let m = (t / 60) % 60
let h = (t / 60) / 60
let s = t % 60

print("\(h) 시 \(m) 분 \(s) 초")




// 3항 연산자

let x = 10
let y = 20
// (조건) ? 만족 : 불만족
print("result:", (x > y) ? x : y)





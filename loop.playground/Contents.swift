import UIKit


// 반복문 : 특정 부분을 반복해서 실행하는 제어 구문입니다.


// while문 예제1

//while문을 사용하여 키보드로부터 입력 받은 수가 10보다 작을 때만 계속 정수를 입력 받으세요.

print("정수 입력: ", terminator: "")
var num: Int = Int(readLine()!)!

while num < 10 {
    print("정수 입력: ", terminator: "")
    num = Int(readLine()!)!

}



// while 예제 2

// 다이어트 관리 프로그램
// 현재 몸무게와 목표몸무게를 입력 받고 주차 별 감량 몸무게를 입력 받으세요.
// 목표 몸무게를 달성하면 축하한다는 문구를 출력 하고 입력을 멈추세요!


print("현재 몸무게: ", terminator: "")
var currentWeight: Int = Int(readLine()!)!
print("목표 몸무게: ", terminator: "")
var targetWeight: Int = Int(readLine()!)!
var week = 1

while currentWeight > targetWeight {
    print("\(week)주차: ", terminator: "")
    var weekyLost: Int = Int(readLine()!)!
    currentWeight -= weekyLost
    week += 1
    if currentWeight < targetWeight {
        print("\(targetWeight)kg 달성! 축하합니다")
    }
}




//  while 예제 3

//Login프로그램

//로그인 프로그램을 만들어 보자.아이디와 비밀번호를 각각 입력 받고 일치할 경우 “로그인성공!”일치하지 않은 경우에는 “로그인 실패!”


let userID = "Hello"
let password = 1234

print("아이디를 입력해주세요: ", terminator: "")
var inputUserID: String = String(readLine()!)
print("비밀번호를 입력해주세요: ", terminator: "")
var inputPassword: Int = Int(readLine()!)!

if inputUserID == userID && inputPassword == password {
    print("로그인 성공!")
} else if inputUserID != userID || inputPassword != password {
    print("비밀번호가 잘못되었습니다")
    print("계속 하시겠습니까? (Y/N) ", terminator: "")
    var inputYesNo: String = String(readLine()!)

    if inputYesNo == "y" {
        while inputUserID != userID || inputPassword != password {
            print("아이디와 비밀번호가 잘못되었습니다")
            print("아이디를 입력해주세요: ", terminator: "")
             inputUserID = String(readLine()!)
            print("비밀번호를 입력해주세요: ", terminator: "")
             inputPassword = Int(readLine()!)!
            if inputUserID == userID && inputPassword == password {
                print("로그인 성공!")
            }
        }
    } else if inputYesNo == "n" {
    } else {
        print("잘못된 입력입니다")
    }
}



// while문 예제4

// (+, -) 계산기프로그램

//아이디와 비밀번호가 틀렸을 경우 "계속 하시겠습니까?" 라는 문장을 출력하세요.
//첫 번째 정수를 입력 받는다.
//두 번째 정수를 입력 받는다.
//연산자를 선택한다.
//선택한 연산자에 따라 연산결과를 출력한다.
//다시 실행할 것인가를 물어본다.
//“Y” 를 입력하면 다시 실행.
//“N”을 입력하면 반복문 종료.


print("첫 번째 정수를 입력하세요: ", terminator: "")
var inputNum1: Int = Int(readLine()!)!
print("두 번째 정수를 입력하세요: ", terminator: "")
var inputNum2: Int = Int(readLine()!)!
print("1.더하기 2.빼기 ", terminator: "")
var inputOperation: Int = Int(readLine()!)!

switch inputOperation {
case 1 :
    print("더하기 연산 결과는 \(inputNum1 + inputNum2)입니다.")
    print("다시 실행 하시겠습니까? (Y/N) ", terminator: "")
    var inputYn: String = String(readLine()!)
    while inputYn == "y" {
        print("첫 번째 정수를 입력하세요: ", terminator: "")
        var inputNum1 = Int(readLine()!)!
        print("두 번째 정수를 입력하세요: ", terminator: "")
        var inputNum2 = Int(readLine()!)!
        print("1.더하기 2.빼기 ", terminator: "")
        var inputOperation = Int(readLine()!)!
        print("더하기 연산 결과는 \(inputNum1 + inputNum2)입니다.")
        print("다시 실행 하시겠습니까? (Y/N) ", terminator: "")
    }

case 2:
    print("빼기 연산 결과는 \(inputNum1 - inputNum2)입니다")
    print("다시 실행 하시겠습니까? (Y/N) ", terminator: "")
    var inputYn: String = String(readLine()!)
    while inputYn == "y" {
        print("첫 번째 정수를 입력하세요: ", terminator: "")
        var inputNum1 = Int(readLine()!)!
        print("두 번째 정수를 입력하세요: ", terminator: "")
        var inputNum2 = Int(readLine()!)!
        print("1.더하기 2.빼기 ", terminator: "")
        var inputOperation = Int(readLine()!)!
        print("더하기 연산 결과는 \(inputNum1 + inputNum2)입니다.")
        print("다시 실행 하시겠습니까? (Y/N) ", terminator: "")
    }
default :
    break
}



// while문 예제 5번

// PlusGame

// 랜덤으로 정수 2개를 뽑아 아래와 같이 출력
// 사용자는 두 수의 합을 입력
// 두 수의 합과 입력한 수가 일치하면 “Success”
// 두 수의 합과 입력한 수가 일치하지 않으면 “Fail”을 출력
// 사용자가 원할 때까지 반복
// Fail 후 계속하기를 선택할 시 기존 숫자를 출력
// Success 후 계속하기를 선택할 시 새로운 숫자를 뽑아서 출력


var randomNum1 = 0
var randomNum2 = 0
var result: Bool = true
var tOrn: Bool = true

print("=== Plus Game ===")



while tOrn == true {
    if result == true{
        randomNum1 = Int.random(in: 1...100)
        randomNum2 = Int.random(in: 1...100)
    }
    print("\(randomNum1) + \(randomNum2) = ")
    var inputNum: Int = Int(readLine()!)!
    if (randomNum1 + randomNum2) == inputNum {
        print("Sucess")
        result = true
    } else {
        print("Fail")
        result = false
    }
    print("계속 하시겠습니까? (Y/N)", terminator: "")
    var inputString: String = String(readLine()!)
    switch inputString {
    case "y" :
        tOrn = true
    case "n" :
        tOrn = false
    default :
        print("다시 입력해주세요")
    }
}



//for 예제 01

//for문을 사용하여 96에서 53까지 출력하시오.
//for문을 사용하여 21에서 57까지의 수 중 홀수만 출력하시오.


for i in 53...96 {
    print(i)
}

for i in 21...57 {
    if i % 2 == 1{
        print(i)
    }
}


// for 예제 02

// 정수를 선언하고, 1부터 정수까지 차례대로 출력하는 프로그램을 작성하시오

let sumNum = 10

for i in 1...sumNum {
    print("\(i)")
}

// for 예제 03

// 한 개의 자연수를 선언하고 그 수의 배수를 차례로 10개 출력하는 프로그램을 작성하시오.

let sumNum1 = 4

for i in 1...10 {
    print("\(4) * \(i) = \(4 * i)")
}

// for 예제 04

// 1~100까지 3의 배수의 합을 출력하세요. (1683)

var sumNum3 = 0

for i in 1...100 {
    if i % 3 == 0 {
        sumNum3 += i
    }
}



// for 예제 3

// for문을 사용하여 구구단을 출력하세요

var num1 = 1
for i in 1...9 {
    print("===\(i)단===")
    for j in 1...9 {
        print("\(i) * \(j) = \(j * i)")
    }
}


// for 예제 4

// for문을 사용하여 2 ~ 30까지의 약수를 구하세요


for i in 2...30 {
    print("\(i)의 약수: ", terminator: "")
    for j in 1...30 {
        i % j == 0 ? print("\(j) ", terminator: "") : nil
    }
    print("")
}


// for 예제 9

// for문을 사용하여 다음과 같은 별 모양으로 출력하세요

//*
//**
//***
//****
//*****


for i in 1...5 {
    for _ in 1...i {
        print("*", terminator: "")
    }
    print()
}


//*****
//****
//***
//**
//*


for i in (1...5).reversed() {
    for _ in 1...i {
        print("*", terminator: "")
    }
    print()
}


//  **
// ****
//******
//********
//**********
//**********
//********
//******
// ****
//  **


for i in (1...5) {
    for _ in i...5 {
        print(" ", terminator: "")
    }
    for _ in 1...i {
        print("*", terminator: "")
    }
    for _ in 1...i {
        print("*", terminator: "")
    }
    print()
}

for i in (1...5) {
    for _ in 1...i {
        print(" ", terminator: "")
    }
    for _ in i...5 {
        print("*", terminator: "")
    }
    for _ in i...5 {
        print("*", terminator: "")
    }
    print()
}


// for 예제 10

// 369게임
//
// 0부터 99까지

// 예시 333***


for cnt in 0..<100 {
    let a = cnt / 10
    let b = cnt % 10
    print("\(a)\(b)", terminator: "")
    if (a % 3 == 0) && (a != 0) {
        print("*", terminator: "")
    }
    if (b % 3 == 0) && (b != 0) {
        print("*", terminator: "")
    }
    print()
}



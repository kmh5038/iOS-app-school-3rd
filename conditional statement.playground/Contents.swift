import UIKit

// 조건문 예제 01

// Int 타입의 변수 age를 선언하고,  만약 age가 20보다 크거나 같다면 “성인입니다.” 라고 출력하는 프로그램을 만들어 보세요.

let x = 21

if x >= 20 {
    print("성인입니다.")
}



// 조건문 예제 02

//변수 num를 선언하고 만약 num이 3의 배수이면서 5의 배수라면 “3과 5의 배수입니다”라고 출력하는 프로그램을 만들어보세요.

let num = 15

if num % 5 == 0 , num % 3 == 0 {
    print("3과 5의 배수입니다")
}



// 조건문 예제 03

// Int 타입의 변수 grade 를 선언하고 만약 grade 가 60점이상이면 “합격입니다.” grade 가 60점 미만이면 “불합격입니다.” 를 출력하는 프로그램을 작성해보세요.

let grade = 60

if grade < 60 {
    print("불합격입니다")
} else {
    print("합격입니다")
}



// 조건문 예제 04

// 정수를 선언하고  양수, 음수, 0을 판별하여 다음과 같이 출력하세요.

let num1 = 1

if num1 > 0 {
    print("\(num1)은 양수입니다")
} else if num1 == 0 {
    print("\(num1)은 0입니다")
} else {
    print("\(num1)은 음수입니다")
}



// 조건문 예제 05

// Int 타입의 변수 num2, num3를 선언하고 num2과 num3 중 큰 수를 출력하는 프로그램을 만들어보세요.

let num2 = 10
let num3 = 20

if num2 > num3 {
    print("\(num2)")
} else {
    print("\(num3)")
}



// 조건문 예제 06

// 정보처리기사의 각 과목의 정답개수를 Int형 타입의 변수 5개를 선언하고 입력받으세요. 한 과목이라도 8개 미만인 경우, “불합격입니다!”를 출력하고 총 개수가 60개 이상이면 “합격입니다!”를 출력하는 프로그램을 만들어보세요.


func inputLine(_ message: String) -> Int{
    print(message,terminator: " ")
    return Int(readLine()!)!
}

    var flag:Bool = true

    var A = inputLine("1과목 소프트웨어 설계")
    if A <= 8 && flag {flag=false}

    A = inputLine("2과목 소프트웨어 개발")
    if A <= 8 && flag {flag=false}

    A = inputLine("3과목 데이터베이스 구축")
    if A <= 8 && flag {flag=false}

    A = inputLine("4과목 프로그래밍 언어 활용")
    if A <= 8 && flag {flag=false}

    A = inputLine("5과목 정보시스템 구축관리")
    if A <= 8 && flag {flag=false}

    flag ? print("합격입니다."):print("불합격입니다.")



// 조건문 예제 07

// 다음은 디즈니랜드 입장료 계산 프로그램입니다.기본료는 5000원이며 인원수에 따라 지불해야하는 프로그램을 만들어보세요.
//단, 미성년자인 경우 50%할인이 적용됩니다!


print("나이를 말씀해주세요.", terminator: "")
let age2: Int = Int(readLine()!)!
print("인원수를 말씀해주세요.", terminator: "")
let countMember: Int = Int(readLine()!)!

if age2 >= 20 {
    print("총 \(countMember * 5000)원 입니다.")
} else if age2 < 20 {
    print("총 \(countMember * 2500)원 입니다.")
}



//조건문 예제 08

//마트 계산대 프로그램입니다. 10000원짜리 추석선물셋트를 구입했을 때 지불해야하는 금액을 계산해 보세요.단, 11개 이상 구매시에는 10%할인이 됩니다!


print("구매하려는 상품 갯수를 입력하세요.", terminator: "")
let countGift: Int = Int(readLine()!)!
let price:Double = Double(countGift) * 10000

if countGift >= 11 {
    print("가격은 \(Int(price - (price * 0.1 )))원 입니다.")
} else {
    print("가격은 \(Int(price))원 입니다.")
}



//조건문 예제 09

//Int 타입의 변수 grade 를 선언하고 키보드로 값을 입력받으세요.Grade가90이상이면 “A학점입니다.”,80점 이상 90점 미만일 경우 “B학점입니다.” 70점이상 80점 미만일 경우 “C학점입니다.” 를 출력하세요.


print("점수를 입력하세요.", terminator: "")
let grade2: Int = Int(readLine()!)!

switch grade2 {
case 90...100 :
    print("A학점입니다.")
case 80...89 :
    print("B학점입니다.")
case 70...79 :
    print("C학점입니다.")
default:
    break
}

// 조건문 예제 10
//
// switch ~ case 문을 사용하여, data가 "hello" 일 때, "네, 안녕하세요!" 출력, data 가 "nice to meet you" 일 때, "네, 반가워요!" 출력,data가 "take care" 일 때, "네, 수고하세요!" 출력,그 외 다른 문장일 때는 "잘못 입력하셨습니다." 라고 출력하는 프로그램을 작성하세요.


print("인사를 입력하세요 ", terminator: "")
let sayHello: String = String(readLine()!)

switch sayHello {
case "hello" :
    print("네, 안녕하세요!")
case "hi" :
    print("네, 반가워요!")
case "bye":
    print("네, 수고하세요!")
default :
    print("잘못 입력하셨습니다.")
}



//조건문 문제11
//
//월을 입력받아 봄, 여름, 가을, 겨울 중 맞는 계절을 알려주는 프로그램을 만드세요.
//
//12, 1, 2월 → 겨울
//3, 4, 5월 → 봄
//6, 7, 8월 → 여름
//9, 10, 11월 →가을

print("월 입력 :  ", terminator: "")
let month: Int = Int(readLine()!)!

switch month {
case 12,1,2 :
   print("\(month)월은 겨울입니다!")
case 3,4,5 :
   print("\(month)월은 봄입니다!")
case 6,7,8 :
   print("\(month)월은 여름입니다!")
case 9,10,11 :
   print("\(month)월은 가을입니다!")
default :
   break

}



// 조건문 문제12
//
//자판기 프로그램을 만들어 봅시다.금액을 입력하고 메뉴를 고른 뒤 잔돈, 금액을 입력하고 메뉴를 고른 뒤 잔돈, 잔돈을 줄 때 천원, 오백원, 백원 을 몇 개 줘야 하는지 출력하세요

print("금액을 입력하세요: ", terminator: "")
let price2: Int = Int(readLine()!)!
print("메뉴를 고르세요\n1.콜라(800원) 2.생수(500원) 3.비타민워터(1500원) : ", terminator: "")
let menu: Int = Int(readLine()!)!

var coke = 800
var water = 500
var vitaminWater = 1500
var menuList = [coke, water, vitaminWater]

var changes = price2 - menuList[menu - 1]

func result(_ num: Int) {
    if price2 < menuList[num] {
        print("돈이 부족해요ㅠㅠ\n잔돈: \(price)")
    } else if price2 > menuList[num]{
        print("잔돈: \(changes)원\n천원: \((changes) / 1000)개,오백원: \(changes % 1000 / 500)개, 백원: \((changes % 500)/100)개")
    }
}

switch menu {
case 1 :
    result(0)
case 2 :
    result(1)
case 3 :
    result(2)
default:
 break
}

import UIKit

/*
 집합 (Sets)
 집합(Sets) 콜렉션에 순서와 상관없이 같은 타입의 다른 값을 저장(유일한 값, 중복없음)
 항목 순서가 중요하지 않거나 항목(아이템)이 반복되면(중복되면) 안될 때 배열 대신에 집합을 사용
 */

// 집합 예제 01
// 두 개의 세트를 입력받아, 그들의 교집합을 반환하는 함수를 작성하세요.

func intersect(_ set1: Set<Int>, _ set2: Set<Int>) -> Set<Int> {
    return set1.intersection(set2)
}


// 집합 예제 02
// 두 개의 세트를 입력받아, 그들의 합집합을 반환하는 함수를 작성하세요.

func unite(_ set1: Set<String>, _ set2: Set<String>) -> Set<String> {
    return set1.union(set2)
}


// 집합 예제 03
// 두 개의 세트를 입력받아, 첫 번째 세트에서 두 번째 세트의 원소들을 제외한 차집합을 반환하는 함수를 작성하세요.

func subtract(_ set1: Set<Double>, _ set2: Set<Double>) -> Set<Double> {
    return set1.subtracting(set2)
}

// 집합 예제 04
// 두 개의 세트를 입력받아, 그들이 서로소인지 판별하는 함수를 작성하세요. (서로소는 공통된 원소가 없는 것을 의미한다.)

func disjoint(_ set1: Set<Character>, _ set2: Set<Character>) -> Bool {
    return set1.isDisjoint(with: set2)
}

// 집합 예제 05
// 하나의 세트를 입력받아, 그 세트의 모든 부분집합을 배열로 반환하는 함수를 작성하세요.

let setI: Set<Int> = [1, 2, 3]
func getSubsets(_ setInt: Set<Int>) -> [[Int]] {
    let arr:[Int] = Array(setInt)
    var result: [[Int]] = []
    
    result.append([])
    
    for i in 0..<setInt.count {
        let cnt = result.count
        for j in 0..<cnt {
            result.append(result[j] + [arr[i]])
        }
    }
    
    return result
}
let subsets = getSubsets(setI)
print(subsets)



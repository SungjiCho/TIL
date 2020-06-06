//
//  main.swift
//  가운데글자가져오기
//
//  Created by 조성지 on 2020/06/06.
//  Copyright © 2020 조성지. All rights reserved.
//

/*스위프트 변수와 상수*/
/*데이터가 저장되는 메모리 내 주소 공간을 개발자가 쉽게 인식하고 사용할 수 있도록 이름으로 연결한 변수와 상수를 제공*/
/*예) ㅍyear = 1999 -> 1999라는 숫자 데이터가 메모리 주소 0x12345678~0x12345678B에 걸쳐 저장되어 있다고 하자.
 "year"라는 단어를 특정 형식에 따라 사용하면,
 컴파일러는 내부에 저장된 메모리 주소록을 뒤져서 year라는 이름으로 연결된 위의 주소를 확인하고,
 각각의 주소에 저장된 값을 읽어와 하나로 합친 1999라는 데이터를 만들어 준다.
 */

/*문자열 안의 문자
 문자열 안에 들어 있는 문자를 확인할 때,
 [] 대괄호 안에 숫자대신 스위프트에서 Index 객체를 넣어준다.
 - 첫 번째 문자의 위치: 문자열.startIndex
 - 마지막 문자 뒤의 위치: 문자열.endIndex
 */

var s = "Hello, World!"
print(s.count) // 13
print(s[s.startIndex]) // H
print(s[s.index(before: s.endIndex)]) // !

/*문자열 안의 문자들 추출
 다른 언어들은 substring이라는 메소드를 제공하지만
 스위프트는 범위 연산자를 사용해야 한다.
 - 문자열[index범위]
 */

let range = s.index(s.startIndex, offsetBy: 7) ... s.index(s.endIndex, offsetBy: -2)
print(s[range]) // World

let range2 = s.index(s.startIndex, offsetBy: 7) ..< s.index(s.endIndex, offsetBy: -1)
print(s[range2]) // World


// 테스트
print(type(of: s.count%2))

var str = "안녕하세요참"
print(str.count)
let range3 = str.index(str.startIndex, offsetBy: str.count/2-1) ... str.index(str.endIndex, offsetBy: -str.count/2)
print(str[range3])


// 제출코드
func solution(_ s:String) -> String {
    
    let len = s.count

    if len%2 == 0{
        let range = s.index(s.startIndex, offsetBy: len/2-1) ... s.index(s.endIndex, offsetBy: -len/2)
        return String(s[range])
    }else{
        let index = s.index(s.startIndex, offsetBy: len/2)
        return String(s[index])
    }
}


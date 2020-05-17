var i = 4
var d = 4.0
var s = "HackerRank "

/* 스위프트에서 변수는 선언과 초기화를 분리하여 작성할 수 있다. 그러나 상수는 예외이다.
  스위프트에서 상수는 선언할 때에만 값을 입력할 수 있기 때문이다.
  단, 클래스나 구조체 객체 내에서 상수를 선언할 때는 예외적으로 선언과 초기화를 분리할 수 있다.
*/

// Declare second integer, double, and String variables.
var ii: Int?
var dd: Double?
var ss: String?

// Read and save an integer, double, and String to your variables.

if let stringInt = readLine(){
    ii = Int(stringInt)
}

if let stringDouble = readLine(){
    dd = Double(stringDouble)
}

if let string = readLine(){
   ss = string
}


// Print the sum of both integer variables on a new line.
if let optInt = ii{
    print(i + optInt)
}
// print(i + ii!)
// Print the sum of the double variables on a new line.
if let optDouble = dd{
    print(d + optDouble)
}
//print(d + dd!)
// Concatenate and print the String variables on a new line
if let optString = ss{
    print(s + optString)
}
//print("\(s)\(ss!)")
// The 's' variable above should be printed first.

/*변수와 상수*/
var year = 1999

/*1999라는 숫자 데이터가 메모리 주소(예: 0x12345678~0x1234567B)까지에 걸쳐 저장되어 있다고 해 봅시다.
 이 주소값을 "year"라는 이름으로 연결합니다.
 우리가 "year"라는 단어를 특정 형식에 따라 사용하면 컴파일러는 내부에 저장된 메모리 주소록을 뒤져서 year라는 이름으로 연결된 실제 주소를 확인하고, 각각의 주소에 저장된 값을 읽어와 하나로 합친 1999라는 데이터를 만들어 줍니다.
 이렇게 값을 저장한, 혹은 저장할 메모리 주소값을 이름으로 연결해 놓은 것을 변수와 상수라고 합니다.*/

/*스위프트는 대부분 초기화 과정에서 변수의 타입이 결정되는데, 이때 활약하는 것이 바로 컴파일러입니다.
 컴파일러는 변수에 대입될 값을 검토하여 가장 적절한 타입을 추론하고, 그에 맞는 메모리 공간을 확보한 다음, 여기에 값을 저장합니다.
 이때부터 해당 변수를 사용할 수 있게 됩니다.
 
 타입에 따라 필요한 메모리 공간이 다릅니다.
 스위프트에서 선언과 초기화를 분리하여 정의하기 위해서는 타입 어노테이션이 필요합니다.*/

var month: Int
month = 8



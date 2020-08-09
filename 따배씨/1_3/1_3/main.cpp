//
//  main.cpp
//  1_3
//
//  Created by 조성지 on 2020/07/29.
//  Copyright © 2020 조성지. All rights reserved.
//

#include <iostream>

int main(int argc, const char * argv[]) {

    int x;
    x = 123;  // assignment: Lvalue(메모리의 주소를 가지고 있는 것), Rvalue(메모리에 임시적으로 저장돤 값)
    x = x + 2;  // 오른쪽 x는 어떤 value?
    
    int y = 123;  // initialization
    int z(123);  // initialization
    
    y = 321;  // assignment
    
    std::cout << x << std::endl;
    std::cout << &x << std::endl;
    
    return 0;
}

//
//  main.cpp
//  1_4
//
//  Created by 조성지 on 2020/07/31.
//  Copyright © 2020 조성지. All rights reserved.
//

#include <iostream> // cout, cin, endl, ...
#include <cstdio>  // printf

int main() {
    
    /* cout, cin, endl은 namespace 안에 정의되어 있고, 이를 사용하기 위해서는
     해당 공간 안에 들어있는 cout, cin, endl를 사용하기 위해 ::사용
     */
    
    std::cout << "I love this lecture!" << std::endl;
    int x = 1024;
    double pi = 3.141592;
    std::cout << "x is " << x << "and pi is " << pi << std::endl;
    
    std::cout << "abc" << "\t" << "def" << std::endl;
    std::cout << "ab" << "\t" << "cdef" << std::endl;
    
    return 0;
}

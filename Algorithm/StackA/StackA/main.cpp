//
//  main.cpp
//  StackA
//
//  Created by 조성지 on 2020/08/14.
//  Copyright © 2020 조성지. All rights reserved.
//

#include <iostream>
using namespace std;

class Stack {
private:
    int top, MaxSize;
    char *stack;
public:
    Stack(int size);
    bool isFull(), isEmpty();
    void pop();
    void push(char element);
    void print();
};

Stack::Stack(int size){
    MaxSize = size;
    stack = new char[MaxSize];
    top = -1;
}

bool Stack::isFull(){
    if(top == MaxSize-1) return 1;
    else return 0;
}

bool Stack::isEmpty(){
    if(top == -1) return 1;
    else return 0;
}

void Stack::pop(){
    if(isEmpty() ==  1) std::cout << "Empty!\n";
    else std:: cout << stack[top--] << std::endl;
}

void Stack::push(char element){
    if(isFull() == 1) std::cout << "Full!\n";
    else stack[++top] = element;
}

void Stack::print(){
    for(int i = 0; i < top+1; ++i)
        std::cout << stack[i] << std::endl;
}


int main() {
    Stack stackA(10);
    stackA.push('a');
    stackA.push('b');
    stackA.push('c');
    stackA.push('d');
    stackA.push('e');
    stackA.push('f');
    stackA.print();
    std::cout << "--------\n";
    stackA.pop();
    stackA.print();
    stackA.push('z');
    stackA.print();
    
    return 0;
}

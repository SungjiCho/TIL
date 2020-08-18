//
//  main.cpp
//  스택_C
//
//  Created by 조성지 on 2020/08/14.
//  Copyright © 2020 조성지. All rights reserved.

/*객체지향에서 문제 해결의 시작점은 작업순서가 아닌 누가 문제를 무엇으로 어떻게 풀어나가는가이다.
 바로 그 '누가' 문제를 풀어나가는 실체인 객체이다.
 객체가 동작해서 객체 밖으로 값을 내보내어 사용자한테 결과를 보여줄 수 있어야 한다.*/

/*자료 저장을 위해 기억 장소를 할당하는 방법에는 정적 할당과 동적 할당이 있다.
 예컨대 변수를 선언하면 자료 저장을 위한 기억 장소가 할당된다.
 프로그램 실행 전에 필요한 기억 장소가 미리 할당된 상태에서 프로그램 동작이 시작되므로 '정적'이라 한다. 그렇다면 '동적'은 미리 할당되지 않은 것을 말하는가? 그렇다.
 동적 할당은 프로그램 실행 중에 필요한 만큼 기억 장소를 요청하는 것이다.
 동적 할당은 기억 장소를 할당하고 할당된 기억 장소의 주소를 포인터 변수에 저장하면 되는 것이다.
 이때 기억 장소 할당을 위해 new 연산자를 사용한다.
 동적 할당으로 확보한 기억 장소는 모두 사용하고 나서 그만 사용하겠다고 해제해야 한다.*/

#include <iostream>
using namespace std;

class Stack {
private:
    int maxSize;
    int top;
    int *stack;
public:
    Stack(int size);
    bool empty();
    int size();
    int topNum();
    void push(int X);
    void pop();
    void print();
};

Stack::Stack(int size){
    maxSize = size;
    stack = new int[maxSize];
    top = -1;
}

bool Stack::empty(){
    if (top == -1) return 1;
    else return 0;
}

int Stack::size(){
    return top+1;
}

int Stack::topNum(){
    if (top == -1) return -1;
    else return stack[top];
}

void Stack::push(int X){
    if (top == maxSize-1) cout << "Full!";
    else stack[++top] = X;
}

void Stack::pop(){
    if (top == -1) cout << -1 << endl;
    else {
        cout << stack[top--] << endl;
    }
}

void Stack::print(){
    for(int i = 0; i <= top; i++)
        cout << stack[i] << endl;
}


int main(void) {
    ios_base::sync_with_stdio(false);
    
    int N;
    string str;
    
    cin >> N;
    Stack stack(N);
    
    for(int i = 0; i < N; i++){
        
        cin >> str;
        
        if (str == "push") {
            int X;
            cin >> X;
            stack.push(X);
        } else if (str == "pop") {
            stack.pop();
        } else if (str == "size") {
            cout << stack.size() << endl;
        } else if (str == "empty") {
            cout << stack.empty() << endl;
        } else if (str == "top") {
            cout << stack.topNum() << endl;
        }
    }
   
    return 0;
}

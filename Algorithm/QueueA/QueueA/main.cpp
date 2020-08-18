//
//  main.cpp
//  QueueA
//
//  Created by 조성지 on 2020/08/16.
//  Copyright © 2020 조성지. All rights reserved.
//

#include <iostream>
using namespace std;

class Queue {
private:
    int maxSize;
    int size;
    int front;
    int back;
    int *queue;
public:
    Queue(int N);
    void push(int X);
    void pop();
    bool empty();
    void getSize();
    void getFront();
    void getBack();
    void print();
};

Queue::Queue(int N){
    maxSize = N;
    queue = new int[maxSize];
    front = back = size = 0;
}

void Queue::push(int X){
    if (size < maxSize){
        queue[back % maxSize] = X;
        back = back + 1;
        size = size + 1;
    }else{
        cout << "Full" << endl;
    }
}

bool Queue::empty(){
    if (size > 0) return 0;
    else return 1;
}

void Queue::pop(){
    if (!empty()){
        front = front + 1;
        size = size - 1;
    }else{
        cout << "Empty" << endl;
    }
}

void Queue::getSize(){
    cout << size << endl;
}

void Queue::getFront(){
    cout <<  front%3 << endl;
}

void Queue::getBack(){
    cout << back%3 << endl;
}

void Queue::print(){
    for(int i = 0; i < maxSize; i++)
        cout << queue[i];
    cout << endl;
}


int main() {
    
    Queue q(5);
    
    q.push(0);
    q.push(1);
    q.push(2);
    q.getSize();
    q.getFront();
    q.getBack();
    cout << "++++++" << endl;
    q.push(3);
    q.push(4);
    q.push(5);
    q.pop();
    q.getSize();
    q.getFront();
    q.getBack();
    cout << "++++++" << endl;
    
    
    return 0;
}

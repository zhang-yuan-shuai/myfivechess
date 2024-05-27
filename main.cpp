#include<stdio.h>
#include<stdlib.h>
#include<iostream>
#include "ChessEngine.h"
using namespace ChessEngine;
using namespace std;
//extern char board[BOARD_WIDTH][BOARD_WIDTH];
//extern int DEPTH;

int main(){
    cout<<"五子棋引擎,难度等级："<<4<<endl;
    cout<<"arm-linux-gnueabihf-g++"<<endl;
    cout<<"https://github.com/zhangyuanshaui/FiveChess.git"<<endl;
    cout<<"版本：1.0"<<endl;
    cout<<"日期：2024/5/10"<<endl;
    string board="";
    int x=0,y=0;
    beforeStart();
    reset(0);
    display();
    while(1)
    {
        cout<<"请输入：行(空格)列并回车"<<endl;
        cin>>x>>y;
        if(x<=0||x>15||y<=0||y>15)
        {
            cout<<"输入错误，请重新输入"<<endl;
            continue;
        }
        cout<<"输入："<<x<<","<<y<<endl;
        board = ChessEngine::nextStep(x-1, y-1);
        display();
        //cout<<board<<endl;
        if(isSomeOneWin()==0)
        {
            cout<<"YOU WIN!!!"<<endl;
            break;
        }else if(isSomeOneWin()==1)
        {
            cout<<"YOU LOSE!!!"<<endl;
            break;
        }else
        {
            continue;
        }
        
    }
    return 0;
}
//
//  CppObject.cpp
//  MyBuckSampleApp
//
//  Created by ZhuXueliang on 2019/12/29.
//

#include "CppObject.hpp"

CppObject::CppObject() {}

int CppObject::static_add(int num1, int num2) {
    return num1 + num2;
}

int CppObject::add(int num1, int num2) {
    return num1 + num2;
}

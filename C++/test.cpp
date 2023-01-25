#include<iostream>
#include <cstdint>
#include "numbertheory"

int main(){
const int64_t x = -2147483647;
uint64_t y = 2;
uint8_t k = 64;
std::cout<<NumberTheory::prime_genn<uint64_t>(k,&y)<<std::endl;
std::cout<<y<<std::endl;
}

#include <iostream>

extern "C" int hello_from_cpp();

int hello_from_cpp() {
    std::cout << "hello from c++" << std::endl;
    return 69;
}

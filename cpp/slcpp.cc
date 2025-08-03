#include <print>

extern "C" void cpp_hello() {
    std::print("Hello from cpp {}\n", 69);
}

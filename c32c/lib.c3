module lib;

import std::io;

fn void test_print() @export("test_print") {
    io::printn("Hello from C3");
}

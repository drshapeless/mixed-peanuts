#[no_mangle]
pub extern "C" fn hello_from_rust() -> i32 {
    println!("hello from rust");

    return 69;
}

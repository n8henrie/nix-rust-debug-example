// src/main.rs
fn a_function() -> u32 {
    dbg!("this is from debug!");
    4
}

fn main() {
    println!("{}", a_function());
    println!("Hello, world!");
}

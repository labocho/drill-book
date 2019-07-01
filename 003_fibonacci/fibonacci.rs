use std::env;

fn main() {
    let args: Vec<String> = env::args().collect();
    let s: &String = args.get(1).expect("argument required");
    let n: usize = s.parse().unwrap();

    println!("{}", fibonacci(n));
}

fn fibonacci(n: usize) -> u128 {
    match n {
        1 | 2 => 1,
        _ => fibonacci(n - 1) + fibonacci(n - 2),
    }
}

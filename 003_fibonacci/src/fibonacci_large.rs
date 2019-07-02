use std::env;

fn main() {
    let args: Vec<String> = env::args().collect();
    let s: &String = args.get(1).expect("argument required");
    let n: usize = s.parse().unwrap();

    println!("{}", fibonacci(n));
}

fn fibonacci(n: usize) -> u128 {
    let mut a: u128 = 1;
    let mut b: u128 = 1;

    for _ in 3..=n {
        let new_b = a + b;
        a = b;
        b = new_b;
    }

    return b
}

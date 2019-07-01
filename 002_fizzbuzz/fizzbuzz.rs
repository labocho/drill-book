use std::env;

fn main() {
    let args: Vec<String> = env::args().collect();
    let s: &String = args.get(1).expect("argument required");
    let n: usize = s.parse().unwrap();

    for i in 1..=n {
        println!("{}", fizzbuzz(i));
    }
}

fn fizzbuzz(i: usize) -> String {
    match i {
        _ if i % 15 == 0 => "FizzBuzz".to_string(),
        _ if i % 5 == 0 => "Buzz".to_string(),
        _ if i % 3 == 0 => "Fizz".to_string(),
        _ => i.to_string(),
    }
}

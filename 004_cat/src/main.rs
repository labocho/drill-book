use std::env;
use std::fs::File;
use std::io::{self, Read};

fn main() {
    let args: Vec<String> = env::args().skip(1).collect();

    if args.len() == 0 {
        print_stdin();
        return;
    }

    for s in args {
        print_file(&s);
    }
}

fn print_file(s: &String) {
    let mut f = File::open(s).expect("File not found");
    let mut buf = String::new();

    f.read_to_string(&mut buf).expect("Cannot read file");
    print!("{}", buf);
}

fn print_stdin() {
    let mut buf = String::new();
    let stdin = io::stdin();
    let mut handle = stdin.lock();

    handle.read_to_string(&mut buf).expect("Cannot read from stdin");
    print!("{}", buf);
}

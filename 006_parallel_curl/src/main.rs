extern crate reqwest;

use std::env;
use std::io::Read;
use std::thread;

fn main() {
    let urls: Vec<String> = env::args().skip(1).collect();

    let threads: Vec<_> = urls.into_iter().map(|url| {
        thread::spawn(move || {
            let mut buf = String::new();
            let mut res: reqwest::Response = reqwest::get(&url).unwrap();
            res.read_to_string(&mut buf).unwrap();
            buf
        })
    }).collect();

    let mut results: Vec<String> = threads.into_iter().map(|t| {
        t.join().unwrap()
    }).collect();
    results.sort();

    for s in results {
        print!("{}", s);
    }
}

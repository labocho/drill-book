extern crate encoding_rs;

use encoding_rs::*;
use std::env;
use std::fs::File;
use std::io::Read;

fn main() {
    let args: Vec<String> = env::args().skip(1).collect();
    let flag = args.get(0).expect("flag required");
    let file = args.get(1).expect("file required");

    let mut f = File::open(file).expect("file not found");
    let mut buf: Vec<u8> = vec![];
    f.read_to_end(&mut buf).expect("Cannot read file");

    let encoding = match flag.as_str() {
        "-S" => SHIFT_JIS,
        "-W16" => UTF_16BE, // auto detect endianness
        _ => panic!("unexpected flag {}", flag),
    };

    let (cow, _, _) = encoding.decode(&buf);
    print!("{}", cow)
}

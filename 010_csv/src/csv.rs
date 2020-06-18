extern crate csv;

use std::collections::HashMap;
use std::env;

type Record = HashMap<String, String>;

fn main() {
    let args: Vec<String> = env::args().skip(1).collect();
    let path = args.get(0).expect("argument required");
    let mut reader = csv::Reader::from_path(path).expect("cannot read file");

    for result in reader.deserialize() {
        let record: Record = result.unwrap();
        println!("{}", record.get("text").unwrap());
    }
}

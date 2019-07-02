extern crate reqwest;

use std::env;
use std::io::{self,Read};
use std::fs::{File};

fn main() {
    let args: Vec<String> = env::args().skip(1).collect();
    let s = args.get(0).expect("argument required");

    let mut buf: Vec<u8> = Vec::new();
    File::open("test/cert.pem").expect("Cannot open cert").read_to_end(&mut buf).expect("Cannot read cert");
    let cert = reqwest::Certificate::from_pem(&buf).expect("Cannot build cert");

    let client = reqwest::ClientBuilder::new().add_root_certificate(cert).build().expect("Cannot create http client");
    let mut res = client.get(s).send().expect("Cannot get response");
    res.copy_to(&mut io::stdout()).unwrap();
}

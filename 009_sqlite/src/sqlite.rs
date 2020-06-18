extern crate rusqlite;

use rusqlite::Connection;
use std::env;

fn main() {
    let args: Vec<String> = env::args().skip(1).collect();
    let code = args.get(0).expect("argument required");

    let conn = Connection::open("test/prefectures.sqlite3").expect("cannot open database");
    let mut stmt = conn
        .prepare("SELECT name FROM prefectures WHERE code = :code")
        .expect("cannot prepare statement");
    let mut rows = stmt
        .query_named(&[(":code", code)])
        .expect("cannot execute query");
    while let Some(row) = rows.next().unwrap() {
        let s: String = row.get(0).unwrap();
        println!("{}", s);
    }
}
